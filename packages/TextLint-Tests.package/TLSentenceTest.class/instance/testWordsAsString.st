test
testWordsAsString

	| aSentence words|
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: '1')).
	words add: (TLWord with: (PPToken on: '2')).
	aSentence := TLSentence withAll: words.
	self assert: aSentence wordsAsString = ' 1 2'