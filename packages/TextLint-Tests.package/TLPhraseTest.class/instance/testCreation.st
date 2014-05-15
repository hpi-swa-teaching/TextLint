test
testCreation

	| aPhrase |
	
	aPhrase := TLPhrase withAll: 1.
	self assert: aPhrase children = 1