accessing
stop
	"Answer the end position of the receiver."
	
	^ self children isEmpty
		ifFalse: [ self children last stop ]
		ifTrue: [ 0 ]