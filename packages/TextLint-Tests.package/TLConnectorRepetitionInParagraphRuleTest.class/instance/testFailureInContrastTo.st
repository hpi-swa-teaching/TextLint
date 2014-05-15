test
testFailureInContrastTo
	|  words word1 word2 aSentence sentences aParagraph paragraphs aDocument aRule results word3 word4 word5 word6 |
	
	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'in')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'contrast')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word3 := TLWord with: (PPToken on: 'to')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word4 := TLWord with: (PPToken on: 'in')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word5 := TLWord with: (PPToken on: 'contrast')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word6 := TLWord with: (PPToken on: 'to')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLConnectorRepetitionInParagraphRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 2.
	self assert: results first element isPhrase.
	self assert: results first element words first = word1.
	self assert: results first element words second = word2.
	self assert: results first element words third = word3.
	
	self assert: results second element isPhrase.
	self assert: results second element words first = word4.
	self assert: results second element words second = word5.
	self assert: results second element words third = word6.
	

	


	