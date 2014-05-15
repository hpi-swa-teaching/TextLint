test
testLatexTokenziation
	| document |
	document := self parse: '\foo\bar{Hello World}' tokenizer: TLLatexTokenizer.

	self assert: document paragraphs size = 1.
	self assert: document sentences size = 1.
	self assert: document words size = 2.
	self assert: document words first text = 'Hello'.
	self assert: document words second text = 'World'