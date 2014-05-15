asserting
assertInvalidQuery: aQueryString
	| parser |
	parser := TLPatternTokenizer parse: aQueryString.
	self assert: parser isPetitFailure