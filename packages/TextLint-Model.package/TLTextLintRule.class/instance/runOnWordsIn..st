running
runOnWordsIn: aDocument 
	^ aDocument words gather: [ :each | self runOnWord: each ]