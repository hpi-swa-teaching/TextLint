test
testSuccessInTwoParagraphs

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph anotherParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test1')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (TLWord with: (PPToken on: 'test1')).
	words add: (TLWord with: (PPToken on: 'test1')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	anotherParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph with: anotherParagraph.
	aDocument := TLDocument withAll: paragraphs.
	aRule := TLWordRepetitionInParagraphRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.	

	