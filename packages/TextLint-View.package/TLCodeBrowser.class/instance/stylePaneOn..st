Glamour
stylePaneOn: browser
				
	browser transmit 
		to: #styles; 
		andShow: [:a | 
			a dropDownList
					display: [:folderPathString | 
						| listOfSyles |
						listOfSyles := OrderedCollection new.
						listOfSyles 
							add: TLWritingStyle scientificPaperStyle name;
							add: TLWritingStyle allButSentenceConstructionStyle name.
						self reInitializeCheckerWith: (listOfSyles at: 1).
						listOfSyles];
					selectedIndex: 1
					].
	
	^browser	
	