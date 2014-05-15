test
testCreation

	| aSentence |
	
	aSentence := TLSentence withAll: 1.
	self assert: aSentence children = 1