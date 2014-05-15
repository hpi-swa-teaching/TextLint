test
testIsWord

	| aWord |

	aWord := TLWord with: 1.

	self assert: aWord isWord.
	self assert: aWord isSyntacticElement.
	self deny: aWord isParagraph.
	self deny: aWord isDocument.
	self deny: aWord isSentence.
	self deny: aWord isPunctuation.
	self deny: aWord isEndOfDocument.
	self deny: aWord isWhitespace.
	self deny: aWord isPhrase.