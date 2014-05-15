test
testTextWithPunctuationMarks
	| document |
	document := self parse: 'text1, hal ! text2.'.

	self assert: document paragraphs size = 1.
	self assert: document sentences size = 2.
	self assert: document words size = 3.
	self assert: document words first text = 'text1'.
	self assert: document words second text = 'hal'.
	self assert: document words last text = 'text2'.