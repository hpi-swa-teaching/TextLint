test
testInterval

	| aSentence words|
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: '1' start: 1 stop: 1)).
	words add: (TLWord with: (PPToken on: '2' start: 2 stop: 2)).
	words add: (TLWhitespace with: (PPToken on: ' ' start: 3 stop: 3)).
	aSentence := TLSentence withAll: words.
	self assert: aSentence interval size = 3