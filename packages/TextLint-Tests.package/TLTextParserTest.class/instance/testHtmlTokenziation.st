test
testHtmlTokenziation
	| document |
	document := self parse: '<h1>Hello&nbsp;World</h1>' tokenizer: TLHtmlTokenizer.

	self assert: document paragraphs size = 1.
	self assert: document sentences size = 1.
	self assert: document words size = 2.
	self assert: document words first text = 'Hello'.
	self assert: document words second text = 'World'