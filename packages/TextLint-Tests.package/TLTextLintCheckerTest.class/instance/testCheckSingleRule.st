test
testCheckSingleRule
	| checker |
	checker := TLTextLintChecker new.

	checker addRule: (TLALotRule new).
	checker parse: 'test a lot that.'.
	
	self assert: (checker results size = 1 ).
	self assert: checker results first element isPhrase.
	self assert: (checker results first element text  = 'a lot' ).
	
	
	
	