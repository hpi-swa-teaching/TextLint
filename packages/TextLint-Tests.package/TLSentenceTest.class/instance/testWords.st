test
testWords

	| aSentence tokens|
	
	tokens := OrderedCollection new.
	tokens add: (TLWord with: (PPToken on: '1')).
	tokens add: (TLWord with: (PPToken on: '2')).
	tokens add: (TLWhitespace with: (PPToken on: ' ')).
	aSentence := TLSentence withAll: tokens.
	self assert: aSentence words size = 2.
	self assert: aSentence words first text = '1'.
	self assert: aSentence words last text = '2'.