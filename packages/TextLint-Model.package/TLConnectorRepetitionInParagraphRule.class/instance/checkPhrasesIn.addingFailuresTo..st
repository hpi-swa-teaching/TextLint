running
checkPhrasesIn: aParagraph addingFailuresTo: results
	| counter phrases |
	self connectorPhrases
		do: [ :eachPhrase | 
			counter := 0.
			phrases := OrderedCollection new.
			aParagraph sentences
				do: [ :eachSentence | 
					(eachSentence allPhrasesOfSize: eachPhrase size)
						do: [ :each | 
							each text = eachPhrase text
								ifTrue: [ 
									phrases add: each.
									counter := counter + 1 ] ] ].
			counter > self repetitionLimit
				ifTrue: [ results addAll: phrases ] ]