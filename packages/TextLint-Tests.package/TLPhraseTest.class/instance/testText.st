test
testText

	| aPhrase words|
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: '1')).
	words add: (TLWord with: (PPToken on: '2')).
	aPhrase := TLPhrase withAll: words.
	self assert: aPhrase text = '12'