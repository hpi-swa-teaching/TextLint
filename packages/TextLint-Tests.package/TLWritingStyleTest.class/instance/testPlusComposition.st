test
testPlusComposition

	| style1 style2 style3 |
	
	style1 := TLWritingStyle named: '1' formedBy: #(3 4).
	style2 := TLWritingStyle named: '2' formedBy: #(5 6).
	
	style3 := style1 + style2.
	
	self assert: style3 name = '1 + 2'.
	self assert: style3 rules size = 4.
	self assert: (style3 rules includes: 3).
	self assert: (style3 rules includes: 4).
	self assert: (style3 rules includes: 5).
	self assert: (style3 rules includes: 6).