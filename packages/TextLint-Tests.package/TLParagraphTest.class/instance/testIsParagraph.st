test
testIsParagraph

	| aParagraph |

	aParagraph := TLParagraph withAll: 1.
	self assert: aParagraph isParagraph.
	self deny: aParagraph isDocument.
	self deny: aParagraph isSentence.
	self deny: aParagraph isWord.
	self deny: aParagraph isPunctuation.
	self deny: aParagraph isEndOfDocument.
	self deny: aParagraph isWhitespace.
	self deny: aParagraph isPhrase.