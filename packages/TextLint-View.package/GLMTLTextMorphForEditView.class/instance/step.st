Glamour
step
	self shouldStep = true ifFalse: [ ^self ].
	
	self hoverCount: self hoverCount + 1.
	self hoverCount > 4 ifTrue: [ 
		| clickEvent |
		self shouldStep: false.
		clickEvent := MouseButtonEvent basicNew 
			setType: #mouseDown
			position: (World activeHand cursorPoint - self owner position)
			which: 2
			buttons: 3
			hand: World activeHand
			stamp: Time millisecondClockValue.
		self hoverAction: clickEvent.
	]..