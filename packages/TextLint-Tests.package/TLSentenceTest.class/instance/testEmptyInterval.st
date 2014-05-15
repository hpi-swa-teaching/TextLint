test
testEmptyInterval

	| aSentence words|
	
	words := OrderedCollection new.
	aSentence := TLSentence withAll: words.
	self assert: aSentence interval size = 0