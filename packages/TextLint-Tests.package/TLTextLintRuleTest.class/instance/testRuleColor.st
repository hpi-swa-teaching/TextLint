test
testRuleColor
	
	| rule |
	
	rule := TLALotRule new.
	self assert: (rule category) equals: #wordsToAvoid.
	self assert: (rule class categoryColors at: (rule category)) equals: TextColor red.