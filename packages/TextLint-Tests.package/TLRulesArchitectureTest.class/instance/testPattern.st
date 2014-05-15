test
testPattern
	| matchingPattern matchingString |
	TLPatternRule allRules do: [ :rule |
		matchingPattern := (rule class whichClassIncludesSelector: #matchingPattern)
			= TLPatternRule.
		matchingString := (rule class whichClassIncludesSelector: #matchingString)
			= TLPatternRule.
		self assert: (matchingPattern or: [ matchingString ]).
		self deny: (matchingPattern and: [ matchingString ]) ]