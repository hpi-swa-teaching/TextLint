test
testRuleColor
	
	| rule |
	
	rule := TLALotRule new.
	self assert: (rule category) equals: #wordsToAvoid.
	self assert: (rule class categorieColors at: (rule category)) equals: TextColor red.