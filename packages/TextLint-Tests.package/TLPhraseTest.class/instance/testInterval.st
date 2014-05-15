test
testInterval

	| aPhrase words|
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: '1' start: 1 stop: 1 )).
	words add: (TLWhitespace with: (PPToken on: ' ' start: 2 stop: 2 )).
	words add: (TLWord with: (PPToken on: '2' start: 3 stop: 3 )).
	aPhrase := TLPhrase withAll: words.
	self assert: aPhrase interval size = 3