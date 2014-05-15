accessing
start
	"Answer the start position of the receiver."
	
	^ self children isEmpty
		ifFalse: [ self children first start ]
		ifTrue: [ 1 ]