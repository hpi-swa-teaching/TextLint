test
testTextWithSyntacticElements

	| aPhrase words|
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: '1')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: '2')).
	aPhrase := TLPhrase withAll: words.
	self assert: aPhrase text = '1 2'