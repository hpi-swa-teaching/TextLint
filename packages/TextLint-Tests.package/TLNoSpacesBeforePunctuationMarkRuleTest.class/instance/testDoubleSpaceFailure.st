test
testDoubleSpaceFailure

	| aRule aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 |

	words := OrderedCollection new.
	words add: ( TLWord with: (PPToken on: 'order')).
	words add: ( TLWhitespace with: (PPToken on: ' ')).
	words add: (word1 := TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLPunctuationMark with: (PPToken on: ',')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLNoSpacesBeforePunctuationMarkRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element children size = 2.
	self assert: results first element children first= word1.
	self assert: results first element children second= word2.
	self assert: results first rule = aRule.
	