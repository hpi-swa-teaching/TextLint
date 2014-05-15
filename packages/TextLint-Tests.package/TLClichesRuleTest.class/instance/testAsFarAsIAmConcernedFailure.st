test
testAsFarAsIAmConcernedFailure

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 word4 word5 word6|

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'as')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'far')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word3 := TLWord with: (PPToken on: 'as')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word4 := TLWord with: (PPToken on: 'I')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word5 := TLWord with: (PPToken on: 'am')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word6 := TLWord with: (PPToken on: 'concerned')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLClichesRule  new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first element words third = word3.
	self assert: results first element words fourth = word4.
	self assert: results first element words fifth = word5.
	self assert: results first element words sixth = word6.
	self assert: results first rule = aRule.

	