test
testWordsAsStringRealText

	| aSentence words|
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'a')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (TLWord with: (PPToken on: 'that')).
	aSentence := TLSentence withAll: words.
	self assert: aSentence wordsAsString = ' test a lot that'