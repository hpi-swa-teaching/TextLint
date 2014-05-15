test
testAllCharacters
	| document |
	document := self parse: (String withAll: Character allByteCharacters).

	self assert: document paragraphs size = 1.
	self assert: document sentences size = 6.
	self assert: document words size = 9