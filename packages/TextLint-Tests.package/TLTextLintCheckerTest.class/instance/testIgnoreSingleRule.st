test
testIgnoreSingleRule
	
	| checker rule |
	
	checker := TLTextLintChecker new.
	rule := TLALotRule new.
	
	checker addRule: rule.
	checker parse: 'test a lot that.'.
	
	self assert: (checker rules size = 1).
	self assert: (checker results size = 1).
	self assert: checker results first element isPhrase.
	self assert: (checker results first element text  = 'a lot').
	
	checker removeRule: rule.
	
	self assert: (checker rules size = 0).
	
	checker reset.
	
	self assert: (checker results size = 0).