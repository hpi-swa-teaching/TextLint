running
runOnSentence: aSentence 
	| results |
	results := OrderedCollection new.
	(aSentence words size > self maxWordsPerSentence ) ifTrue: [results add: (TLRuleFailure on: self at: aSentence)].
	^results

