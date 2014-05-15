accessing
allRules
	^ self subclasses isEmpty
		ifTrue: [ Array with: self new ]
		ifFalse: [ self subclasses gather: [ :each | each allRules ] ]