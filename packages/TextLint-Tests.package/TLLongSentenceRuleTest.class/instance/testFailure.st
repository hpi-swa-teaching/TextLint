test
testFailure

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 |
	aRule := TLLongSentenceRule new.

	words := OrderedCollection new.
	aRule maxWordsPerSentence timesRepeat: [ words add: ( TLWord with: (PPToken on: 'order')) ].
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element = aSentence.
	self assert: results first rule = aRule.

	