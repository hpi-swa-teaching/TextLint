Glamour
ruleFailuresIn: anInterval
	| ruleFailures |
	ruleFailures := OrderedCollection new. 
	
	results do: [ :each |
		( (each element start <= anInterval first) and: ([ each element stop >= anInterval last]) )
			ifTrue: [ruleFailures add: each].
		].
	^ruleFailures