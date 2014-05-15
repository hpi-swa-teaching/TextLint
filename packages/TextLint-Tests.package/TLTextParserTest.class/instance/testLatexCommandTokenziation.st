test
testLatexCommandTokenziation
	| document |
	document := self parse: '\newcommand[something]{else}
	common' tokenizer: TLLatexTokenizer.

	self assert: document paragraphs size = 1.
	self assert: document sentences size = 1.
	self assert: document words size = 1.
	self assert: document words first text = 'common'