as yet unclassified
doubleClick: anEvent
	super doubleClick: anEvent.
	Transcript show: (self browser ruleFailuresIn: self selectionInterval).