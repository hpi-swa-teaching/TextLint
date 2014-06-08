Glamour
ruleFailuresAt: aPosition
	| ruleFailures |
	ruleFailures := OrderedCollection new. 
	
	results do: [ :each |
		( (each element start <= aPosition) and: ([ each element stop >= aPosition]) )
			ifTrue: [ruleFailures add: each].
		].
	^ruleFailures