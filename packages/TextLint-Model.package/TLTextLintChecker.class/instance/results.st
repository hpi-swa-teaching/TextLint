accessing
results
	^ results ifNil: [ results := document allElements gather: [ :each | each checkWith: self ] ]