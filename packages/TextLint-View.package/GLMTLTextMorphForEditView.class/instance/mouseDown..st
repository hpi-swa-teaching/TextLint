as yet unclassified
mouseDown: anEvent
	| oldPosition |
	oldPosition := editor caret.
	super mouseDown:  anEvent.
	anEvent hand waitForClicksOrDrag: self event: anEvent.
	anEvent yellowButtonPressed ifTrue: [
		self handleInteraction: [editor mouseDown: anEvent].
		self menuWithRuleFailures.
		editor selectFrom:oldPosition to: (oldPosition - 1).
	]