Glamour
codePaneOn: browser

	browser transmit 
		to: #code;
		from: #files;
		"from: #styles;"
		andShow: [:presentation | 
					presentation tlText 
							browser: self;
							title: [:file | file name ];
							display: [:file | 
								| text |
								textLintChecker isNil ifFalse: [ 
									[textLintChecker document text = textToCheck] whileFalse: [].
									text := textLintChecker document highlightedText.
									textLintChecker results do: [ :each | each highlightOn: text ].].
								text.];
							act: [:text :file |
								MultiByteFileStream
									forceNewFileNamed: file
									do: [ :stream | stream nextPutAll: text text ].
								textToCheck := text text asString.
								saveAnnouncer announce: TLFileSaved.
								] on: $s entitled: 'Save modifications and re-check [cmd-s]';
							updateOn: TLFileSaved from: [saveAnnouncer];
							updateOn: TLStyleChanged from:[styleAnnouncer]].
	
	^ browser