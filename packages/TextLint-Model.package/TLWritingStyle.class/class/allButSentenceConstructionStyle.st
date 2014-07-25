accessing
allButSentenceConstructionStyle
	^ self
		named: 'All but sentence construction'
		formedBy: (TLTextLintRule allRules 
			reject: [ :each | each category = #sentenceConstruction 
							or: [each class = TLWordRepetitionInParagraphRule ]])