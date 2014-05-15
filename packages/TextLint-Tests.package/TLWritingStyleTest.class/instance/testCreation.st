test
testCreation

	| aStyle |
	
	aStyle := TLWritingStyle named: 3 formedBy: #(1 2).

	self assert: (aStyle name = 3).	
	self assert: (aStyle includes: 1).
	self assert: (aStyle includes: 2)