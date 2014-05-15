running
runOnSentencesIn: aDocument 
	^ aDocument sentences gather: [ :each | self runOnSentence: each ]