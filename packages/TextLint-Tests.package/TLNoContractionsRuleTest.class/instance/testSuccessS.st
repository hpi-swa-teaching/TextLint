test
testSuccessS

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 |

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'he')).
	words add: (TLPunctuationMark with: (PPToken on: '''')).
	words add: (word2 := TLWord with: (PPToken on: 'r')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLNoContractionsRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty

	