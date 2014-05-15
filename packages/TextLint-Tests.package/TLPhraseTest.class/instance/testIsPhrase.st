test
testIsPhrase
	| aParagraph |

	aParagraph := TLPhrase withAll: 1.
	self assert: aParagraph isPhrase.
	self deny: aParagraph isDocument.
	self deny: aParagraph isSentence.
	self deny: aParagraph isWord.
	self deny: aParagraph isPunctuation.
	self deny: aParagraph isEndOfDocument.
	self deny: aParagraph isWhitespace.
	self deny: aParagraph isParagraph.