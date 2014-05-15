running
runOnSentence: aSentence
	| parts last average |
	parts := self
		cutAt: [ :each | each text = ',' ]
		in: aSentence children.
	parts size < 2
		ifTrue: [ ^ #() ].
	last := self 
		cutAt: [ :each | each text = 'and' or: [ each text = 'or' ] ] 
		in: parts last.
	last size < 2
		ifTrue: [ ^ #() ].
	parts := parts allButLast , last.
	parts size < 3
		ifTrue: [ ^ #() ].
	parts := parts allButFirst.
	"only consider it, if all parts have roughly the same number of words"
	average := (parts inject: 0 into: [ :count :part | count + part size ]) / parts size asFloat.
	(parts allSatisfy: [ :part | part size between: average - 1.5 and: average + 1.5 ])
		ifFalse: [ ^ #() ].
	^ Array with: (TLRuleFailure on: self at: aSentence)