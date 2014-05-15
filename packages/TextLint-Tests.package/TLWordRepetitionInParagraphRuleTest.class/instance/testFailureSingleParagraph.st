test
testFailureSingleParagraph

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 |
	
	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'test')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (word2 := TLWord with: (PPToken on: 'test')).
	words add: (word3 :=TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLWordRepetitionInParagraphRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 3.
	self assert: results first = word1.
	self assert: results second = word2.
	self assert: results last = word3.


	