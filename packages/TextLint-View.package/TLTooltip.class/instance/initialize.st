as yet unclassified
initialize
	super initialize.
	self
		backgroundColor: (Color r: 230/255 g: 238/255 b: 253/255);
		borderWidth: 1;
		borderColor: Color gray;
		margins: 2;
		position: World activeHand cursorPoint - ((self width / 2) @ (self height / 2));
		contents: ''.