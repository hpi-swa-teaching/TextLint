Glamour
rightClick: anEvent
	"Opens menu with failures for current part and sets caret to former position"
	| oldPosition |
	oldPosition := editor caret.
	self handleInteraction: [editor mouseDown: anEvent].
	self menuWithRuleFailures.
	editor selectFrom:oldPosition to: (oldPosition - 1).