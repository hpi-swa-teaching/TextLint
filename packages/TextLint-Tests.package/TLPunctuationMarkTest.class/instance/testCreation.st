test
testCreation

	| aToken |

	aToken := TLPunctuationMark with: 1.
	
	self assert: aToken text = 1