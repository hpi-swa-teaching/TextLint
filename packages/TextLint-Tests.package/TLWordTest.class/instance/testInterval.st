test
testInterval

	| aWord |

	aWord := TLWord with: (PPToken on: '1' start: 1 stop: 1) .
	
	self assert: aWord interval size = 1