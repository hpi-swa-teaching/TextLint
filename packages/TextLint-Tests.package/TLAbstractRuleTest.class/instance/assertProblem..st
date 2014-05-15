asserting
assertProblem: aDocumentString
	|parseResult checkResult|
	parseResult := TLTextLintChecker new parse: aDocumentString.
	self deny: parseResult isPetitFailure.
	document := parseResult document.
	checkResult := self runRule.
	self deny: checkResult isEmpty.
	checkResult do: [:r | r isPetitFailure].
	^ checkResult
	