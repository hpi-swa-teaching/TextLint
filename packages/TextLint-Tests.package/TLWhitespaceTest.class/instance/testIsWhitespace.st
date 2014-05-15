test
testIsWhitespace

	| aToken |

	aToken := TLWhitespace with: 1.

	self assert: aToken isWhitespace.
	self assert: aToken isSyntacticElement.
	self deny: aToken isParagraph.
	self deny: aToken isDocument.
	self deny: aToken isSentence.
	self deny: aToken isWord.
	self deny: aToken isPunctuation.
	self deny: aToken isEndOfDocument.
	self deny: aToken isPhrase.