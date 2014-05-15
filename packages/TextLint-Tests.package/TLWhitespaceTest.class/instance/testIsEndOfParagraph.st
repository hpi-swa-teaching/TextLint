test
testIsEndOfParagraph
	| aToken aWhitespace |
	aToken := PPToken
		on: 'ab
	'
		start: 1
		stop: 3.
	aWhitespace := TLWhitespace with: aToken.
	self deny: aWhitespace isEndOfParagraph.
	
	aToken := PPToken
		on: 'ab

cd'
		start: 1
		stop: 6.
	aWhitespace := TLWhitespace with: aToken.
	self assert: aWhitespace isEndOfParagraph