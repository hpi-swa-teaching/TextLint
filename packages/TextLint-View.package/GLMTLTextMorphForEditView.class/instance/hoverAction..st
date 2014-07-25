Glamour
hoverAction: anEvent
	| oldPosition |
	oldPosition := editor caret.
	self handleInteraction: [editor mouseDown: anEvent].
	self tooltipWithRuleFailures.
	editor selectFrom:oldPosition to: (oldPosition - 1).
