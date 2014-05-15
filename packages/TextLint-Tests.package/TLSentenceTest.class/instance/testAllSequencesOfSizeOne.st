test
testAllSequencesOfSizeOne

	| aSentence words phrases aWord |
	
	words := OrderedCollection new.
	words add: (aWord := TLWord with: (PPToken on: '1')).
	aSentence := TLSentence withAll: words.
	phrases := aSentence allSequencesOfSize: 1.
	self assert: phrases size = 1.
	self assert: phrases first words size = 1.
	self assert: phrases first words first = aWord.