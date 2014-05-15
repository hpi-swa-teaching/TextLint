Glamour
codeBrowser

	| browser |
		
	browser := GLMTabulator new.
	browser title: 'TextLint Results Browser'.
	browser 
			row: [ :row | 
				row 
					column: [:col | 
						col
							row: #files span: 3;
							row: #styles size: 30.];
					column: [ :col |
						col
							row: #issues span: 3;
							row: #rationale span: 2;
							row: #export size: 45] span: 3 ];
			row: #code.
	self filesPaneOn: browser.
	self stylePaneOn: browser.
	self issuesPaneOn: browser.
	self rationalePaneOn: browser.
	self codePaneOn: browser.
	self exportButtonOn: browser.
	
	browser transmit 
		to: #code->#selectionInterval; 
		from: #issues; when: [:s | s notNil and: [ s isCollection not ]] ; 
		transformed: [ :s | 
			lastRuleSelectionInterval := Interval 
				from: (s element interval first -  s element interval size) 
				to: (s element interval last -  s element interval size).
			s element interval].
	
	saveAnnouncer 
		when: TLFileSaved 
		do: [:announcement |
					browser transmit
						to: #code->#selectionInterval;
						when: [:s | lastRuleSelectionInterval isNil not.]; 
						transformed: [ :s | lastRuleSelectionInterval]].
	browser transmit 
		from: #styles;
		to:#styles; when: [:s | s notNil] ; 
		transformed: [ :s | 
			self reInitializeCheckerWith: s.
			styleAnnouncer announce: TLStyleChanged.
			s].
	
	^browser