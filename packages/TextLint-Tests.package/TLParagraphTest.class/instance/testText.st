test
testText

	| aParagraph words aSentence anotherSentence sentences |

	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: '1')).
	words add: (TLWord with: (PPToken on: '2')).
	aSentence := TLSentence withAll: words.	
	sentences := OrderedCollection with: aSentence with: (TLWhitespace with: (PPToken on: ' ')).
	aParagraph := TLParagraph withAll: sentences.
	self assert: aParagraph text = '12 '