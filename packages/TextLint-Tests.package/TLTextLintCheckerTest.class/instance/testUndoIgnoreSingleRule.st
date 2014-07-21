test
testUndoIgnoreSingleRule
	
	| checker rule1 rule2 |
	
	checker := TLTextLintChecker new.
	rule1 := TLALotRule new.
	rule2 := TLWouldRule new.
	
	checker addRule: rule1.
	checker addRule: rule2.
	self assert: (checker ignoredRules size = 0).
	self assert: (checker rules size = 2).
	checker parse: 'allow to test a lot that.'.
	
	checker removeRule: rule1.
	checker removeRule: rule2.
	self assert: (checker ignoredRules size = 2).
	self assert: (checker rules size = 0).
	
	"check undo"