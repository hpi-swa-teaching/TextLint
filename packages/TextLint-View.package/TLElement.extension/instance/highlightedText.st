*textlint-view
highlightedText
	| text |
	text := self text asText.
	self highlightOn: text.
	^  text