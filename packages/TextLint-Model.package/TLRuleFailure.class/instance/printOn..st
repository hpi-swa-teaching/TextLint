printing
printOn: aStream
	super printOn: aStream.
	aStream cr; tab; print: self rule.
	aStream cr; tab; print: self element