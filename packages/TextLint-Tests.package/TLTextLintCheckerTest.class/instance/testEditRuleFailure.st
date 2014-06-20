test
testEditRuleFailure
	
	| checker rule |
	
	checker := TLTextLintChecker new.
	rule := TLALotRule new.
	
	checker addRule: rule.
	checker parse: 'test a lot that.'.
	
	self assert: (checker results size = 1).
	self assert: checker results first element isPhrase.
	self assert: (checker results first element text  = 'a lot').
	
	checker reset.
	checker parse: 'test that'.
	
	self assert: (checker results size = 0).