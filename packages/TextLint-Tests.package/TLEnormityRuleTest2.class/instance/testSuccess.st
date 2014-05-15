as yet unclassified
testSuccess
	self createWord: 'test'.
	self createWord: 'test'.
	self createWord: 'truth'.
	self createWord: 'is'.
	self createWord: 'test'.
	self createSentence.
	self createParagraph.
	
	self assertCorrect.