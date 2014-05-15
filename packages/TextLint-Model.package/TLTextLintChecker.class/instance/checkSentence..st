mocking
checkSentence: aSentence 
	^ rules gather: [ :each | each runOnSentence: aSentence ]