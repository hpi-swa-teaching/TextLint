accessing
results
	results ifNil: [ 
		| i |
		i := 0.
		'Checking rules'
			displayProgressAt: Display center
			from: 0 to: document allElements size
			during: [:bar | 
				results := document allElements gather: [ 
					:each | 
					i := i + 1.
					bar value: i.
					i \\ 10 = 0 ifTrue: [bar value: 'Checking rules on ', each class asString, '; ', (i * 100 // document allElements size) asString, ' %'.].
					each checkWith: self].].].
	
	^ results.