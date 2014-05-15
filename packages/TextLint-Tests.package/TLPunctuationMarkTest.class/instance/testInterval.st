test
testInterval

	| aToken |

	aToken := TLPunctuationMark with: (PPToken on: '.' start: 1 stop: 1) .
	
	self assert: aToken interval size = 1