asserting
assertCorrect: aDocumentString
	|result|
	result := TLTextLintChecker new parse: aDocumentString.
	self deny: result isPetitFailure.
	document := result document.
	self assert: self runRule isEmpty