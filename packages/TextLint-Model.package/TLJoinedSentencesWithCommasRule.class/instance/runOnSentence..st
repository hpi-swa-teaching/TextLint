running
runOnSentence: aSentence 
	| results numberOfCommas children commaIndex wordsBeforeComma wordsAfterComma |
	results := OrderedCollection new.
	children := aSentence children.
	numberOfCommas := children inject: 0 into:  [:count :each | (each text = ',') ifTrue: [ count + 1 ] ifFalse: [ count ]].
	(numberOfCommas = 1) ifFalse: [^results].
	
	commaIndex := children indexOf: (children detect: [:each | each isPunctuation and: [each text = ',']]).
	wordsAfterComma := children select: [:each | each isWord and: [ (children indexOf: each) > commaIndex ]].
	wordsAfterComma isEmpty ifTrue: [^results].
	(self wordsBeforeComma anySatisfy: [:each | wordsAfterComma first text sameAs: each] ) ifTrue: [^results].
	
	wordsBeforeComma := children select: [:each | each isWord and: [ (children indexOf: each) < commaIndex ]].
	
	
	((wordsBeforeComma size > 4) and: [wordsAfterComma size > 4]) ifTrue: [ results add: (TLRuleFailure on: self at: aSentence) ].
	^results

