test
testText

	| aToken |

	aToken := TLTerminatorMark with: (PPToken on: '1') .
	
	self assert: aToken text = '1'