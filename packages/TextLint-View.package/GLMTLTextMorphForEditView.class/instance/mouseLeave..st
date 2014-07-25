as yet unclassified
mouseLeave: anEvent
	super mouseLeave: anEvent.
	self shouldStep: false.
	self hoverCount: 0.
