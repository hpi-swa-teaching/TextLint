as yet unclassified
mouseDown: anEvent
	super mouseDown:  anEvent.
	self shouldStep: false.
	anEvent hand waitForClicksOrDrag: self event: anEvent.
	anEvent yellowButtonPressed ifTrue: [self rightClick: anEvent].