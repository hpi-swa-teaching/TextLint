accessing
addStyle: aStyle
	aStyle rules do: [ :each | self addRule: each ]