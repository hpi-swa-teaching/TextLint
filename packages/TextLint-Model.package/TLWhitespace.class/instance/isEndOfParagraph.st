testing
isEndOfParagraph
	| count |
	count := 0.
	NewLineParser
		matchesIn: token value
		do: [ :each | 
			(count := count + 1) = 2
				ifTrue: [ ^ true ] ].
	^ false