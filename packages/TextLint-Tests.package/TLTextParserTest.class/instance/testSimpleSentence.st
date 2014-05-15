test
testSimpleSentence
	| document |
	document := self parse: 'text1 text2.'.

	self assert: document text = 'text1 text2.'.	
	self assert: document paragraphs size = 1.
	self assert: document sentences size = 1.
	self assert: document words size = 2.
	self assert: document words first text = 'text1'.
	self assert: document words second text = 'text2'.