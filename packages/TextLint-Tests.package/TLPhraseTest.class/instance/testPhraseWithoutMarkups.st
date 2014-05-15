test
testPhraseWithoutMarkups

	| aPhrase tokens|
	
	tokens := OrderedCollection new.
	tokens add: (TLWord with: (PPToken on: '1')).
	tokens add: (TLWord with: (PPToken on: '2')).
	tokens add: (TLWhitespace with: (PPToken on: ' ')).
	tokens add: (TLMarkup with: (PPToken on: '\emph ')).
	aPhrase := TLPhrase withAll: tokens.
	self assert: aPhrase phraseWithoutMarkups isPhrase.
	self assert: aPhrase phraseWithoutMarkups children size = 3.
	self assert: aPhrase phraseWithoutMarkups children first text = '1'.
	self assert: aPhrase phraseWithoutMarkups children second text = '2'.
	self assert: aPhrase phraseWithoutMarkups children last isWhitespace.