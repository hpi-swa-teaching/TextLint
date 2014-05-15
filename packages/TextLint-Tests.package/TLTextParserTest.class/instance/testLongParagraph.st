test
testLongParagraph
	| document |
	document := self parse: 'A conventional language and development environment should be leveraged as the host instead of introducing a new or derived one. Furthermore embedded languages should not suffer from an additional interpretation layer, but instead run at the same level as the host language. This avoids compatibility problem with existing code, and performance impact of embedded code.'.

	self assert: document paragraphs size = 1.
	self assert: document sentences size = 3.
	self assert: document words size = 55.
	self assert: document words first text = 'A'.
	self assert: document words last text = 'code'