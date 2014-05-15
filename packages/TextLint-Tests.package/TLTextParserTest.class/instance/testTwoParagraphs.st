test
testTwoParagraphs
	| document |
	document := self parse: 'text1 text2. 
	
text.'.

	self assert: document paragraphs size = 2.
	self assert: document sentences size = 2.
	self assert: document words size = 3.
	self assert: document words first text = 'text1'.
	self assert: document words second text = 'text2'.
	self assert: document words last text = 'text'