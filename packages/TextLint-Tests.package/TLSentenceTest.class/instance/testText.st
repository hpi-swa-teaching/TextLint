test
testText

	| aSentence tokens|
	
	tokens := OrderedCollection new.
	tokens add: (TLWord with: (PPToken on: '1')).
	tokens add: (TLWord with: (PPToken on: '2')).
	tokens add: (TLWhitespace with: (PPToken on: ' ')).
	aSentence := TLSentence withAll: tokens.
	self assert: aSentence text = '12 '