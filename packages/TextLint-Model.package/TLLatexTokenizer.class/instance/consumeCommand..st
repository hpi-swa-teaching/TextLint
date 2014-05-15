private
consumeCommand: aStream
	| counter char |
	('{[' includes: aStream peek)
		ifFalse: [ ^ self ].
	counter := 0.
	[	char := aStream next.
		(char = ${ or: [ char = $[ ])
			ifTrue: [ counter := counter + 1 ]
			ifFalse: [ 
				(char = $} or: [ char = $] ])
					ifTrue: [ counter := counter - 1 ] ].
		aStream atEnd or: [ counter = 0 ] ] whileFalse.
	self consumeCommand: aStream