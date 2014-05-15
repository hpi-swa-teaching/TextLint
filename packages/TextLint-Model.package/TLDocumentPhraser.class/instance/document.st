grammar
document
	^ (paragraph starLazy: documentTerminator) , (documentTerminator optional)