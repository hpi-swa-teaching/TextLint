as yet unclassified
mouseEnter: anEvent
	super mouseEnter: anEvent.
	self shouldStep: true.