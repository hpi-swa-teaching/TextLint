accessing
allSequencesOfSize: aSmallInteger
	| sequences children|
	sequencesCache at: aSmallInteger ifPresent: [:element | ^element].
	sequences := OrderedCollection new.
	children := self children.
	1 to: children size 
					do: [ :index | ((index + aSmallInteger - 1) <= children size) 
																	ifTrue: [ sequences add: (TLPhrase withAll: ( syntacticElements 
																														copyFrom: (syntacticElements indexOf: (children at: index )) 
																														to: (syntacticElements indexOf: (children at: index + aSmallInteger - 1))))]
																	ifFalse: [ sequencesCache at: aSmallInteger put: sequences. 
																		 	^sequences] ].
	sequencesCache at: aSmallInteger put: sequences.
	^sequences
