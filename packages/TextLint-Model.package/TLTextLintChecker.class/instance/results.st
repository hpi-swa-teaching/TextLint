accessing
results
	| i |
	i := 0.
	'Cecking rules'
		displayProgressAt: Display center
		from: 0 to: document allElements size
		during: [:bar | 
			results ifNil: [ results := document allElements gather: [ :each | 
																	i := i + 1.
																	bar value: i.
																	each checkWith: self].
						].
		].
	
	^ results.