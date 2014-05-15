test
testEmptyInterval

	| aParagraph words aSentence anotherSentence sentences |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: '1' start: 1stop: 1 )).
	words add: (TLWord with: (PPToken on: '2' start: 2stop: 2 )).
	aSentence := TLSentence withAll: words.	
	sentences := OrderedCollection with: aSentence with: (TLWhitespace with: (PPToken on: ' ' start: 3 stop: 3 )).
	aParagraph := TLParagraph withAll: sentences.
	self assert: aParagraph interval size = 3