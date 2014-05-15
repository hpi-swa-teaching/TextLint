running
checkWordsIn: aParagraph addingFailuresTo: results
	| failingWords value wordsCounter |
	wordsCounter := Dictionary new.
	failingWords := OrderedCollection new.
	aParagraph words
		do: [ :eachWord | 
			value := wordsCounter at: eachWord text ifAbsentPut: [ 0 ].
			wordsCounter at: eachWord text put: value + 1 ].
	wordsCounter
		keysAndValuesDo: [ :aKey :aValue | 
			(aValue > self repetitionLimit and: [ self connectorWords includes: aKey ])
				ifTrue: [ failingWords add: aKey ] ].
	aParagraph words
		do: [ :eachWord | 
			(failingWords includes: eachWord text)
				ifTrue: [ results add: eachWord ] ]