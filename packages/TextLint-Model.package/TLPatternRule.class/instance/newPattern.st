private
newPattern
	| result |
	result := self matchingPattern.
	result class = PPFlattenParser
		ifFalse: [ result := result flatten ].
	^ result 