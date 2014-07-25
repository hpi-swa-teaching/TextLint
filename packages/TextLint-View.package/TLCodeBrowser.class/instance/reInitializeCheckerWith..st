private
reInitializeCheckerWith: aStyleName
	aStyleName = 'All but sentence construction' 
		ifTrue: [
			textLintChecker := TLTextLintChecker new.
			textLintChecker addStyle: TLWritingStyle allButSentenceConstructionStyle].
	aStyleName = 'Scientific Paper Style' 
		ifTrue: [
			textLintChecker := TLTextLintChecker new.
			textLintChecker addStyle: TLWritingStyle scientificPaperStyle].