test
testContainsPhraseAtTheMiddle

	| aSentence words|

	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'xxxx')).
	words add: (TLWord with: (PPToken on: '1')).
	words add: (TLWord with: (PPToken on: '2')).
	words add: (TLWord with: (PPToken on: '3')).
	words add: (TLWord with: (PPToken on: 'xxxx')).
	aSentence := TLSentence withAll: words.
	
	self assert: (aSentence containsPhrase: '1 2 3')