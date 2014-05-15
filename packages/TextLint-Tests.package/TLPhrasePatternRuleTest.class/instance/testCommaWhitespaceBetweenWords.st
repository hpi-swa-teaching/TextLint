as yet unclassified
testCommaWhitespaceBetweenWords

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2  |

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'So')).
	words add: (TLPunctuationMark with: (PPToken on: ',')).
	words add: (TLWhitespace new).
	words add: (word2 := TLWord with: (PPToken on: 'Called')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'to')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLPhrasePatternRule 
				named: 'Avoid "So,Called"'
				rationale: 'rationale'
				matching: 'so, called'.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words size = 2.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first rule = aRule.

	