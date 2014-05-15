test
testImmutability

	| aStyle |
	
	aStyle := TLWritingStyle named: 3 formedBy: #(1 2).
	
	self deny: (aStyle includes: 4).	
	aStyle rules add: 4.
	self deny: (aStyle includes: 4).	
