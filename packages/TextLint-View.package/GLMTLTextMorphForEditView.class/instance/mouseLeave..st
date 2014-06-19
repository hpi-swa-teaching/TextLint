Glamour
mouseLeave: anEvent
	super mouseLeave: anEvent.
	self shouldStep: false.
	self hoverCount: 0.