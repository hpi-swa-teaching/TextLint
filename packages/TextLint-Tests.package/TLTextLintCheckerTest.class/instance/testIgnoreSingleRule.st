test
testIgnoreSingleRule
	
	| checker rule1 rule2 |
	
	checker := TLTextLintChecker new.
	rule1 := TLALotRule new.
	rule2 := TLWouldRule new.
	
	checker addRule: rule1.
	checker addRule: rule2.
	checker parse: 'test would a lot that.'.
	
	self assert: (checker rules size = 2).
	self assert: (checker results size = 2).
	self assert: checker results first element isPhrase.
	self assert: (checker results first element text  = 'a lot').
	
	checker ignoreRule: rule1.
	
	self assert: (checker rules size = 1).
	
	checker reset.
	
	self assert: (checker results size = 1).