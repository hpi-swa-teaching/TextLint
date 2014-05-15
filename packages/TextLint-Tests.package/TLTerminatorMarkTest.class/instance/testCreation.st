test
testCreation

	| aToken |

	aToken := TLTerminatorMark with: 1.
	
	self assert: aToken text = 1