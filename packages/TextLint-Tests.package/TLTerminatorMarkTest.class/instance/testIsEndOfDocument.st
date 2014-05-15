test
testIsEndOfDocument

	| aToken |

	aToken := TLTerminatorMark with: 1.

	self assert: aToken isEndOfDocument.
	self assert: aToken isSyntacticElement.
	self deny: aToken isParagraph.
	self deny: aToken isDocument.
	self deny: aToken isSentence.
	self deny: aToken isWord.
	self deny: aToken isPunctuation.
	self deny: aToken isWhitespace.
	self deny: aToken isPhrase.