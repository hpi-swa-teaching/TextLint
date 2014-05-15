asserting
deny: aQueryString recognizes: aSentenceString
	| results |
	results := self checkQuery: aQueryString on: aSentenceString.
	self assert: results isEmpty