test
testWords

	| aPhrase tokens|
	
	tokens := OrderedCollection new.
	tokens add: (TLWord with: (PPToken on: '1')).
	tokens add: (TLWord with: (PPToken on: '2')).
	tokens add: (TLWhitespace with: (PPToken on: ' ')).
	aPhrase := TLPhrase withAll: tokens.
	self assert: aPhrase words size = 2.
	self assert: aPhrase words first text = '1'.
	self assert: aPhrase words last text = '2'.