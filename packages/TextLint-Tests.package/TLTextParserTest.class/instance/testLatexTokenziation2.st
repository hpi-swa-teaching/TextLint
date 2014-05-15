test
testLatexTokenziation2
	| document |
	document := self parse: 'an \ct{AnyOfSetPattern}' tokenizer: TLLatexTokenizer.

	self assert: document paragraphs size = 1.
	self assert: document sentences size = 1.
	self assert: document words size = 2.
	self assert: document words first text = 'an'.
	self assert: document words second text = 'AnyOfSetPattern'