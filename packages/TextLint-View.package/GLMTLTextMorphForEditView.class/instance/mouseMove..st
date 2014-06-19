Glamour
mouseMove: anEvent
	super mouseMove: anEvent.
	self shouldStep: true.
	self hoverCount: 0.