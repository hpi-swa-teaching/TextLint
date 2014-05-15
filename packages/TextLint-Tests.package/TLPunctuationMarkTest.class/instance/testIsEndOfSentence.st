test
testIsEndOfSentence

	| aToken |

	aToken := TLPunctuationMark with: (PPToken on: '.').
	self assert: aToken isEndOfSentence.
	
	aToken := TLPunctuationMark with: (PPToken on: ';').
	self assert: aToken isEndOfSentence.
	
	aToken := TLPunctuationMark with: (PPToken on: ':').
	self assert: aToken isEndOfSentence.
	
	aToken := TLPunctuationMark with: (PPToken on: '!').
	self assert: aToken isEndOfSentence.
	
	aToken := TLPunctuationMark with: (PPToken on: '?').
	self assert: aToken isEndOfSentence.
	
	aToken := TLPunctuationMark with: (PPToken on: ',').
	self deny: aToken isEndOfSentence.