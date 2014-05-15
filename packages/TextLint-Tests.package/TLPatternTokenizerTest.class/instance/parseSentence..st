private
parseSentence: aSentenceString
	| checker sentence |
	checker := TLTextLintChecker new.
	sentence := (checker parse: aSentenceString) document paragraphs first sentences first.
	^ sentence