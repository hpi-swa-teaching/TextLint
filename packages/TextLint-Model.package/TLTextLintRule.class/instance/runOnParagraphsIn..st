running
runOnParagraphsIn: aDocument 
	^ aDocument paragraphs gather: [ :each | self runOnParagraph: each ]