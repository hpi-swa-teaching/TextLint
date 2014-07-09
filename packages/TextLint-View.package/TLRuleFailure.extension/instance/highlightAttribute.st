*textlint-view
highlightAttribute
	| attribute |
	attribute := TLAttribute new.
	attribute 
		ruleFailure: self;
		color: (TLTextLintRule categoryColors at: self rule category) color.
	^ attribute