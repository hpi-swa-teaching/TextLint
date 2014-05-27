Glamour
codePaneOn: browser

	browser transmit 
		to: #code;
		from: #files;
		"from: #styles;"
		andShow: [:presentation | 
					presentation tlText 
							title: [:file | file name ];
							display: [:file | 
								| text |
								textLintChecker isNil ifFalse: [ 
									text := textLintChecker document highlightedText.
									results do: [ :each | each highlightOn: text ].].
								text. ];
							act: [:text :file |
								MultiByteFileStream
									forceNewFileNamed: file
									do: [ :stream | stream nextPutAll: text text ].
								textToCheck := text text asString.
								saveAnnouncer announce: TLFileSaved.
								
								"(text pane browser paneNamed: #code) presentations do: [:pres | pres update]."
								] on: $s entitled: 'Save modifications [cmd-s]';
							act: [ :text |
								textToCheck := text text asString.
								modifiedAnnouncer announce: TLTextModified.] on: $r entitled: 'Re-check with modifications  [cmd-r]';
							updateOn: TLFileSaved from: [saveAnnouncer];
							updateOn: TLStyleChanged from:[styleAnnouncer];
							updateOn: TLTextModified from: [modifiedAnnouncer].
						].
	
	^browser