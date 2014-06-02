as yet unclassified
mouseDown: anEvent
	
	Transcript show: (self browser ruleFailuresIn: self selectionInterval).
	super mouseDown:  anEvent.