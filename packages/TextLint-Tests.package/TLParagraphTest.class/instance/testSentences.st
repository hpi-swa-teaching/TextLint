test
testSentences

	| aParagraph words aSentence anotherSentence sentences |

	aParagraph := TLParagraph withAll: (OrderedCollection with: (TLWord with: '2')).
	self assert: aParagraph sentences size = 1.
	self assert: aParagraph sentences first text = '2'.
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: '1')).
	words add: (TLWord with: (PPToken on: '2')).
	aSentence := TLSentence withAll: words.	
	sentences := OrderedCollection with: aSentence with: (TLWhitespace with: (PPToken on: ' ')).
	aParagraph := TLParagraph withAll: sentences.
	self assert: aParagraph sentences size = 1.
	self assert: aParagraph sentences first text = '12'.