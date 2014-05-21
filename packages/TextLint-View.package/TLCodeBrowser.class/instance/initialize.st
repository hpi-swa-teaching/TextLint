initialization
initialize
	super initialize.
	textLintChecker := TLTextLintChecker new.
	saveAnnouncer := Announcer new.
	styleAnnouncer := Announcer new.
	modifiedAnnouncer := Announcer new.
	lastRuleSelectionInterval := nil.