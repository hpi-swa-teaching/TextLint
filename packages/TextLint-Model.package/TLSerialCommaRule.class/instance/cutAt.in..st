private
cutAt: aBlock in: aCollection 
	| result current|
	result := OrderedCollection new.
	current := OrderedCollection new.
	aCollection do: [:e |
		e isWhitespace ifFalse: [
			(aBlock value: e)
				ifTrue: [current isEmpty ifFalse: [result add: current. current:= OrderedCollection new]]
				ifFalse: [current add: e]]
		].
	current isEmpty ifFalse: [result add: current].
	^ result