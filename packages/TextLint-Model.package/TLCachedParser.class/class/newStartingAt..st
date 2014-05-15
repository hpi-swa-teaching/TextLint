instance creation
newStartingAt: aSymbol
	^ instance ifNil: [ instance := super newStartingAt: aSymbol ]