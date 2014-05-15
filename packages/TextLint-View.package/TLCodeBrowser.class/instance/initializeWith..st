initialization
initializeWith: aStyle
	textLintChecker := TLTextLintChecker new.
	aStyle rules do: [:rule | textLintChecker addRule: rule ].