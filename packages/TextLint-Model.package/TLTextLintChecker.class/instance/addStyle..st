accessing
addStyle: aStyle
	rules removeAll.
	aStyle rules do: [ :each | self addRule: each ].