initialization
initialize
	super initialize.
	textLintChecker := TLTextLintChecker new.
	saveAnnouncer := Announcer new.
	styleAnnouncer := Announcer new.
	lastRuleSelectionInterval := nil.