test
testText

	| aWord |

	aWord := TLWord with: (PPToken on: '1') .
	
	self assert: aWord text = '1'