test
testContainsPhraseInAnyCase

	| aSentence words|

	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'xxxx')).
	words add: (TLWord with: (PPToken on: 'a')).
	words add: (TLWord with: (PPToken on: 'b')).
	words add: (TLWord with: (PPToken on: 'c')).
	aSentence := TLSentence withAll: words.
	
	self assert: (aSentence containsPhrase: 'A B C').
	
	words add: (TLWord with: (PPToken on: 'xxxx')).
	words add: (TLWord with: (PPToken on: 'a')).
	words add: (TLWord with: (PPToken on: 'b')).
	words add: (TLWord with: (PPToken on: 'c')).
	aSentence := TLSentence withAll: words.
	
	self assert: (aSentence containsPhrase: 'a b c').
	
	words add: (TLWord with: (PPToken on: 'xxxx')).
	words add: (TLWord with: (PPToken on: 'a')).
	words add: (TLWord with: (PPToken on: 'B')).
	words add: (TLWord with: (PPToken on: 'c')).
	aSentence := TLSentence withAll: words.
	
	self assert: (aSentence containsPhrase: 'A B c')