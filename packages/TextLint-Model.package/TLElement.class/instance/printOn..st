printing
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: ' ('.
	self printContentOn: aStream.
	aStream nextPut: $)