test
testFailureTwoParagraph

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph anotherParagraph paragraphs results word1 word2 word3 word4 word5 word6 |
	
	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'however')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (word2 := TLWord with: (PPToken on: 'however')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	words := OrderedCollection new.
	words add: (word4 := TLWord with: (PPToken on: 'however')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (word5 := TLWord with: (PPToken on: 'however')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	anotherParagraph := TLParagraph withAll: sentences.
	
	paragraphs := OrderedCollection with: aParagraph with: anotherParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLConnectorRepetitionInParagraphRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 4.
	self assert: results first element = word1.
	self assert: results second element = word2.
	self assert: results third element = word4.
	self assert: results fourth element = word5.
	


	