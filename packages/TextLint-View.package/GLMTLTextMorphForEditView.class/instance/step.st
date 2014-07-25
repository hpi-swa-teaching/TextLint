Glamour
step
"stepping is used for the hover effect"
	self shouldStep = true ifFalse: [ ^self ].
	
	self hoverCount: self hoverCount + 1.
	self hoverCount > 4 ifTrue: [ 
		self shouldStep: false.
		self hoverAction: self buildClickEvent.
	]..
