accessing
phraseWithoutMarkups
	^ self class withAll: (syntacticElements reject: [ :each | each isMarkup ])