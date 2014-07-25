test
testReactivateSingleRule
	
	| checker rule1 rule2 |
	
	checker := TLTextLintChecker new.
	rule1 := TLALotRule new.
	
	checker addRule: rule1.
	self assert: (checker ignoredRules size = 0).
	self assert: (checker rules size = 1).
	checker parse: 'allow to test a lot that.'.
	
	checker ignoreRule: rule1.
	self assert: (checker ignoredRules size = 1).
	self assert: (checker rules size = 0).
	
	checker reactivateRule: rule1.
	self assert: (checker ignoredRules size = 0).
	self assert: (checker rules size = 1).