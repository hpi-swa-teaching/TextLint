accessing
token
	"Answer the first token in the receiver or nil."
	
	^ self children isEmpty ifFalse: [ self children first token ]