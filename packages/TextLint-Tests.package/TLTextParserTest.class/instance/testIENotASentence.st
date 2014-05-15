test
testIENotASentence
	| document |
	document := self parse: 'We have written a paper, i.e., typing latex'.

	self assert: document sentences size equals: 1.