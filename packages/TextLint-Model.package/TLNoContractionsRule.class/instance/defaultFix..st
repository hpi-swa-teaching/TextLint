accessing
defaultFix: aText
	| defaultFix |
	"check and replacing trailing negation (e.g. isn't)"
	(aText endsWith: 'n''t') ifTrue: [^ (aText truncateTo:  aText size - 3 ), ' not' ].
	
	"all failed. Leave the word unchanged"
	^ aText