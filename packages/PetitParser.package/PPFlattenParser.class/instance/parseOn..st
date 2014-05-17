parsing
parseOn: aStream
	| start element stop |
	start := aStream position.
	element := parser parseOn: aStream.
	element isPetitFailure ifTrue: [
		aStream position: start.
		^ element ].
	stop := aStream position.
	^ self create: aStream collection start: start + 1 stop: stop