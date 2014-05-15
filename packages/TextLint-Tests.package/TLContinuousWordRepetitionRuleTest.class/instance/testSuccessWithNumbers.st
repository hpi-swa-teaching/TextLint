test
testSuccessWithNumbers

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	aWord := TLWord with: (PPToken on: '123').
	anotherWord := TLWord with: (PPToken on: '123').
	words := OrderedCollection with: aWord with: anotherWord.
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	aRule := TLContinuousWordRepetitionRule new.
	results := aRule runOn: aDocument.
	self assert: results isEmpty