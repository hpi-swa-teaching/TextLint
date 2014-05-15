test
testFailureCaseInsensitive

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 word4 |

	words := OrderedCollection new.
	word1 := words add: (TLWord with: (PPToken on: 'EACH')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	word2 := words add: (TLWord with: (PPToken on: 'AND')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	word3 := words add: (TLWord with: (PPToken on: 'EVERY')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	word4 := words add: (TLWord with: (PPToken on: 'ONE')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLEachAndEveryOneRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first element words third= word3.
	self assert: results first element words fourth = word4.
	self assert: results first rule = aRule.

	