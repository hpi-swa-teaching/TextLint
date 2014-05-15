Glamour
codePaneOn: browser

	browser transmit 
		to: #code;
		from: #files;
		"from: #styles;"
		andShow: [:presentation | 
					presentation text 
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

								saveAnnouncer announce: TLFileSaved.
								
								"(text pane browser paneNamed: #code) presentations do: [:pres | pres update]."
								] on: $s entitled: 'Save modifications [cmd-s]';
							updateOn: TLFileSaved from: [saveAnnouncer];
							updateOn: TLStyleChanged from:[styleAnnouncer].	
						].
	
	^browser