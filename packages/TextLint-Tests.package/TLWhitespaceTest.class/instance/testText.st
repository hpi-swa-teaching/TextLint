test
testText

	| aToken |

	aToken := TLWhitespace with: (PPToken on: '1') .
	
	self assert: aToken text = '1'