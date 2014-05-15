accessing
wordsAsString
	^self words inject: '' into: [:count :each | count, ' ', each text] 