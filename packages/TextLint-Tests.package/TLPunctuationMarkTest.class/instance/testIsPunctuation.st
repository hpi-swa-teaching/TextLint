test
testIsPunctuation

	| aToken |

	aToken := TLPunctuationMark with: 1.

	self assert: aToken isPunctuation.
	self assert: aToken isSyntacticElement.
	self deny: aToken isParagraph.
	self deny: aToken isDocument.
	self deny: aToken isSentence.
	self deny: aToken isWord.
	self deny: aToken isEndOfDocument.
	self deny: aToken isWhitespace.
	self deny: aToken isPhrase.