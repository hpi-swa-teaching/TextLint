test
testFailureTwoParagraph

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph anotherParagraph paragraphs results word1 word2 word3 word4 word5 word6 |
	
	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'test')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (word2 := TLWord with: (PPToken on: 'test')).
	words add: (word3 := TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	words := OrderedCollection new.
	words add: (word4 := TLWord with: (PPToken on: 'test')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (word5 := TLWord with: (PPToken on: 'test')).
	words add: (word6 := TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	anotherParagraph := TLParagraph withAll: sentences.
	
	paragraphs := OrderedCollection with: aParagraph with: anotherParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLWordRepetitionInParagraphRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 6.
	self assert: results first = word1.
	self assert: results second = word2.
	self assert: results third = word3.
	self assert: results fourth = word4.
	self assert: results fifth = word5.
	self assert: results sixth = word6.
	


	