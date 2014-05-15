test
testFailureManyWords

	| aRule aDocument anotherWord aSentence words sentences aParagraph paragraphs results aWord |

	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'tes')).
	words add: (aWord := TLWord with: (PPToken on: 'test')).
	words add: (anotherWord := TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'xxxx')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLContinuousWordRepetitionRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words size = 2.
	self assert: results first element words first = aWord.
	self assert: results first element words second = anotherWord.
	self assert: results first rule = aRule.


	