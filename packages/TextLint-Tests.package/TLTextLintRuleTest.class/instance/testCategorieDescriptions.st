test
testCategorieDescriptions

	| rule |
	
	rule := TLALotRule new.
	self assert: (rule category) equals: #wordsToAvoid.
	self assert: (rule class categorieDescriptions at: (rule category)) isNotEmpty"equals: 'Words and phrases you should avoid'".