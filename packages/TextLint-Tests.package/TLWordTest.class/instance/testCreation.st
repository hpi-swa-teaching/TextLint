test
testCreation

	| aWord |

	aWord := TLWord with: 1.
	
	self assert: aWord token = 1