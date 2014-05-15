test
testWords

	| aParagraph words aSentence anotherSentence sentences |

	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: '2')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.

	self assert: aParagraph words size = 1.
	self assert: aParagraph words first text = '2'.
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: '1')).
	words add: (TLWord with: (PPToken on: '2')).
	aSentence := TLSentence withAll: words.	
	sentences := OrderedCollection with: aSentence with: (TLWhitespace with: (PPToken on: ' ')).
	aParagraph := TLParagraph withAll: sentences.
	self assert: aParagraph words size = 2.
	self assert: aParagraph words first text = '1'.
	self assert: aParagraph words last text = '2'.