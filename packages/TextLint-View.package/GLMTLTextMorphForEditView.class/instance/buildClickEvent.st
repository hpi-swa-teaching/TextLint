Glamour
buildClickEvent
	^MouseButtonEvent basicNew 
			setType: #mouseDown
			position: (self owner transform globalPointToLocal: (World activeHand cursorPoint))
			which: 2
			buttons: 3
			hand: World activeHand
			stamp: Time millisecondClockValue.