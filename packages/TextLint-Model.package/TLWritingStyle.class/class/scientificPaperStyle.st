accessing
scientificPaperStyle
	^ self
		named: 'Scientific Paper Style'
		formedBy: (TLTextLintRule allRules 
			reject: [ :each | each class = TLWordRepetitionInParagraphRule ])