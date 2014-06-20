test
testallButSentenceConstructionStyle

	| style containingRules |
	
	containingRules := (TLTextLintRule allRules 
							reject: [:each | each category == #sentenceConstruction 
								or: [each class = TLWordRepetitionInParagraphRule]]).

	style := TLWritingStyle allButSentenceConstructionStyle.
	
	style rules do: [:each | 
		self assert: ((each category == #sentenceConstruction) not
					or: [each class = TLWordRepetitionInParagraphRule ])].
	self assert: style rules size = containingRules size.
