instance creation
on: aSequenceableCollection start: aStartInteger stop: aStopInteger
	^ self basicNew 
		initializeOn: aSequenceableCollection
		start: aStartInteger stop: aStopInteger