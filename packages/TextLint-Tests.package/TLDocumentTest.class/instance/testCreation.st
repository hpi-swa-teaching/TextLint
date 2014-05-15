test
testCreation

	| aDocument |
	
	aDocument := TLDocument withAll: 1.
	self assert: aDocument paragraphs = 1