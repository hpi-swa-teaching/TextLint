tools
analyzeAllHistory: aDirectory
	"self analyzeAllHistory: (FileDirectory on: '/Users/renggli/University/git/papers/TextLint/TextLint-IWST2010/casestudy')"
	
	aDirectory directoryNames asSortedCollection 
		do: [ :each | self analyzeHistory: (aDirectory directoryNamed: each) ]
		displayingProgress: 'Analyzing Directories'