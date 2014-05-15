test
testIsSentence

	| aSentence |
	
	aSentence := TLSentence withAll: 1.

	self assert: aSentence isSentence.
	self deny: aSentence isParagraph.
	self deny: aSentence isDocument.
	self deny: aSentence isWord.
	self deny: aSentence isPunctuation.
	self deny: aSentence isEndOfDocument.
	self deny: aSentence isWhitespace.
	self deny: aSentence isPhrase.