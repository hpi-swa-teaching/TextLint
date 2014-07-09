as yet unclassified
treeMorphFor: tmpTreeModel and: aPresentation
	| tmpTreeMorph columns |
	tmpTreeMorph := TLMorphTreeMorph new.
	tmpTreeMorph
		makeLastColumnUnbounded;
		doubleClickSelector: #onDoubleClick;
		getMenuSelector: #menu:shifted:;
		keystrokeActionSelector: #keyStroke:from:;
		dragEnabled: tmpTreeModel dragEnabled;
		dropEnabled: tmpTreeModel dropEnabled;
		cornerStyle: tmpTreeMorph preferredCornerStyle;
		borderStyle: (BorderStyle inset width: 1);
		autoDeselection: aPresentation allowsDeselection;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		layoutFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1)).
	columns := aPresentation columns isEmpty 
		ifTrue: [ OrderedCollection with: (MorphTreeColumn new rowMorphGetSelector: #elementColumn)]
		ifFalse: [
			aPresentation columns collect: [:each | 
				GLMMorphTreeColumn new 
					startWidth: each width;
					glamourColumn: each; 
					headerButtonLabel: (aPresentation titleValueOfColumn: each) 
					font: StandardFonts menuFont 
					target: nil 
					actionSelector: nil 
					arguments: #(); 
					yourself ].
		].
	tmpTreeMorph
		preferedPaneColor: Color white;	
		model: tmpTreeModel;
		nodeListSelector: #roots;
		columns: columns.
	aPresentation isMultiple 
		ifTrue: [tmpTreeMorph beMultiple] 
		ifFalse: [tmpTreeMorph beSingle].
	tmpTreeModel chunkSize: aPresentation amountToShow.
	tmpTreeMorph vShowScrollBar.
	^ tmpTreeMorph buildContents