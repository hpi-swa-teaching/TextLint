test
testLatexMath
	| document |
	document := self parse: 'a $1 + 2$ formula' tokenizer: TLLatexTokenizer.
	
	self assert: document paragraphs size = 1.
	self assert: document sentences size = 1.
	self assert: document words size = 2.
	self assert: document words first text = 'a'.
	self assert: document words second text = 'formula'