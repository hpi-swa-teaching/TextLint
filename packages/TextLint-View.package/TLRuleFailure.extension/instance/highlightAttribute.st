*textlint-view
highlightAttribute
	| attribute |
	attribute := TLAttribute new.
	attribute 
		ruleFailure: self;
		color: (TLTextLintRule categorieColors at: self rule category) color.
	^ attribute