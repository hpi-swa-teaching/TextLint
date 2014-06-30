Glamour
step
	self shouldStep = true ifFalse: [ ^self ].
	
	self hoverCount: self hoverCount + 1.
	self hoverCount > 6 ifTrue: [ 
		| clickEvent |
		self shouldStep: false.
		clickEvent := MouseButtonEvent basicNew 
			setType: #mouseDown
			position: (self owner transform globalPointToLocal: (World activeHand cursorPoint))
			which: 2
			buttons: 3
			hand: World activeHand
			stamp: Time millisecondClockValue.
		self hoverAction: clickEvent.
	]..