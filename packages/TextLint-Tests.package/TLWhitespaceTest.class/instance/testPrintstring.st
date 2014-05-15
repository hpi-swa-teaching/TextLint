test
testPrintstring

	| aToken |

	aToken := TLWhitespace with: (PPToken on: 'abc') .
	
	"Checks that 'abc' is included in the printString "
	self assert: (aToken printString indexOfSubCollection: 'abc') > 0