test
testFailureCaseInsensitive

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |

	aWord := TLWord with: (PPToken on: 'HowEvEr').
	anotherWord := TLWord with: (PPToken on: 'test').
	words := OrderedCollection with: aWord with: anotherWord.
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLHoweverRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first element isPhrase.
	self assert: results first element size = 1.
	self assert: results first element children first = aWord.
	self assert: results first rule = aRule
	