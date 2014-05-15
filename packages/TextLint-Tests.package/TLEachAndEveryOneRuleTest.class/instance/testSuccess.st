test
testSuccess
	
	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'A')).
	words add: (TLWord with: (PPToken on: 'every')).
	words add: (TLWord with: (PPToken on: 'one')).
	words add: (TLWord with: (PPToken on: 'most')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	aRule := TLEachAndEveryOneRule new.
	results := aRule runOn: aDocument.
	self assert: results isEmpty