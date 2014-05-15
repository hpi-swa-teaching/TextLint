running
runOnParagraph: aParagraph 
	| counts results |
	counts := Bag new.
	aParagraph words
		do: [ :word | counts add: word text ].
	results := OrderedCollection new.
	aParagraph words do: [ :word | 
		self wordRepetitionLimit < (counts occurrencesOf: word text)
			ifTrue: [ results add: word ] ].
	^ results