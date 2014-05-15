test
testAllSequencesOfSize

	| aSentence words phrases |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: '1')).
	words add: (TLWord with: (PPToken on: '2')).
	words add: (TLWord with: (PPToken on: '3')).
	words add: (TLWord with: (PPToken on: '4')).
	words add: (TLWord with: (PPToken on: '5')).
	aSentence := TLSentence withAll: words.
	phrases := aSentence allSequencesOfSize: 3.
	self assert: phrases size = 3.
	self assert: phrases first text = '123'.
	self assert: phrases second text = '234'.
	self assert: phrases last text = '345'.