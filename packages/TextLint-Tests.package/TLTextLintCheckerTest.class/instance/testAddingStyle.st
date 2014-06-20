test
testAddingStyle

	| checker |

	checker := TLTextLintChecker new.
	checker addStyle: TLWritingStyle scientificPaperStyle.
	self assert: (checker rules size) equals: (TLTextLintRule allRules size - 1).