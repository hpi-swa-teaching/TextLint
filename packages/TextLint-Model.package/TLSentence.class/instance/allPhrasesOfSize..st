accessing
allPhrasesOfSize: aSmallInteger
	| phrases words |
	phrasesCache at: aSmallInteger ifPresent: [:element | ^element].
	phrases := OrderedCollection new.
	words := self words.
	1 to: words size 
					do: [ :index | ((index + aSmallInteger - 1) <= words size) 
																	ifTrue: [ phrases add: (TLPhrase withAll: ( syntacticElements 
																														copyFrom: (syntacticElements indexOf: (words at: index )) 
																														to: (syntacticElements indexOf: (words at: index + aSmallInteger - 1))))]
																	ifFalse: [ phrasesCache at: aSmallInteger put: phrases. 
																		 	^phrases] ].
	phrasesCache at: aSmallInteger put: phrases.
	^phrases
