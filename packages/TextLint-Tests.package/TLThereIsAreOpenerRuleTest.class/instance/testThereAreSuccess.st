test
testThereAreSuccess

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2|

	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word1 := (TLWord with: (PPToken on: 'There'))).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: ( word2 := TLWord with: (PPToken on: 'are')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLThereIsAreOpenerRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty

	