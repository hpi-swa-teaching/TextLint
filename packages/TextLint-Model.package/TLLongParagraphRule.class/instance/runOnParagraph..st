running
runOnParagraph: aParagraph 
	| results |
	results := OrderedCollection new.
	(aParagraph sentences size > self maxSentencesPerParagraph ) ifTrue: [results add: (TLRuleFailure on: self at: aParagraph)].
	^results

