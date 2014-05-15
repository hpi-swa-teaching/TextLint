running
runOn: aDocument 
	^ OrderedCollection new
		addAll: (self runOnDocument: aDocument);
		addAll: (self runOnParagraphsIn: aDocument);
		addAll: (self runOnSentencesIn: aDocument);
		addAll: (self runOnWordsIn: aDocument);
		yourself