printing
printContentOn: aStream
	self children do: [ :each | aStream nextPutAll: each text ]