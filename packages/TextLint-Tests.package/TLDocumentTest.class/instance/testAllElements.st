test
testAllElements

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
	self assert: aDocument allElements size = 7.
	self assert: (aDocument allElements includes: aDocument).
	self assert: (aDocument allElements includes: aParagraph).
	self assert: (aDocument allElements includes: aSentence).
	self assert: (aDocument allElements includes: words first).
	self assert: (aDocument allElements includes: words second).
	self assert: (aDocument allElements includes: words third).
	self assert: (aDocument allElements includes: words fourth).