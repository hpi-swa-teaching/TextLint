private
checkQuery: aQueryString on: aSentenceString
	| results parser sentence |
	parser := self tokenizeQuery: aQueryString.
	sentence := self parseSentence: aSentenceString.
	results := parser matchesIn: sentence children.
	^ results