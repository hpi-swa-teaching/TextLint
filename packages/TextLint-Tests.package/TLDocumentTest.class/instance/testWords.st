test
testWords

	| aDocument words aSentence aParagraph sentences paragraphs|
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: '1')).
	words add: (TLWord with: (PPToken on: '2')).
	words add: (TLWord with: (PPToken on: '3')).
	words add: (TLWord with: (PPToken on: '4')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	
	aDocument := TLDocument withAll: paragraphs.
	self assert: aDocument words size = 4.
	self assert: ( (aDocument words asArray at: 1) text = '1' ).
	self assert: ( (aDocument words asArray at: 2) text = '2' ).
	self assert: ( (aDocument words asArray at: 3) text = '3' ).
	self assert: ( (aDocument words asArray at: 4) text = '4' ).