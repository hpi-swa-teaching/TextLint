test
testFailureNevertheless
	|  words word1 word2 aSentence sentences aParagraph paragraphs aDocument aRule results |
	
	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'nevertheless')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (word2 := TLWord with: (PPToken on: 'nevertheless')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLConnectorRepetitionInParagraphRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 2.
	self assert: results first element  = word1.
	self assert: results second element = word2.

	


	