private
tokenizeQuery: aQueryString
	| parser |
	parser := TLPatternTokenizer parse: aQueryString.
	self deny: parser isPetitFailure.
	^ parser