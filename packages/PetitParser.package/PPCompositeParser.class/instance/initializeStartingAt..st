initialization
initializeStartingAt: aSymbol
	| productionNames |
	self initialize.
	productionNames := self productionNames.
	parser := PPDelegateParser named: aSymbol.
	productionNames keysAndValuesDo: [ :key :value |
		self instVarAt: key put: (PPDelegateParser named: value) ].
	parser setParser: (self perform: aSymbol).
	productionNames keysAndValuesDo: [ :key :value |
		(self instVarAt: key) setParser: (self perform: value) ]