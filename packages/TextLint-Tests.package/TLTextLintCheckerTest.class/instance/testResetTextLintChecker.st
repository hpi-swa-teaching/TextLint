test
testResetTextLintChecker
	
	| checker rule |
	
	checker := TLTextLintChecker new.
	rule := (TLALotRule new).

	checker addRule: rule.
	checker parse: 'allow to test a lot that.'.
	
	self assert: (checker results size = 1).
	self assert: checker results first element isPhrase.
	self assert: (checker results first element text  = 'a lot').
	
	checker reset.
	checker removeRule: rule.
	rule :=  (TLAllowToRule new).
	checker addRule: rule.

	self assert: (checker results size = 1).
	self assert: checker results first element isPhrase.
	self assert: (checker results first element text  = 'allow to').