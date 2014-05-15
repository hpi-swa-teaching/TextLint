test
testIsDocument

	| aDocument |
	
	aDocument := TLDocument withAll: 1.
	self assert: aDocument isDocument.
	self deny: aDocument isParagraph.
	self deny: aDocument isSentence.
	self deny: aDocument isWord.
	self deny: aDocument isPunctuation.
	self deny: aDocument isEndOfDocument.
	self deny: aDocument isWhitespace.
	self deny: aDocument isPhrase.