private
reInitializeCheckerWith: aStyleName
	
	aStyleName = 'Scientific Paper Style' 
		ifTrue: [
			textLintChecker := TLTextLintChecker new.
			textLintChecker addStyle: TLWritingStyle scientificPaperStyle]
