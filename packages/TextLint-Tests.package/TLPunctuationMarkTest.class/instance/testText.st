test
testText

	| aToken |

	aToken := TLPunctuationMark with: (PPToken on: '1') .
	
	self assert: aToken text = '1'