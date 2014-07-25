Glamour
rightClick: anEvent
	| oldPosition |
	oldPosition := editor caret.
	self handleInteraction: [editor mouseDown: anEvent].
	self showContextMenu.
	editor selectFrom:oldPosition to: (oldPosition - 1).