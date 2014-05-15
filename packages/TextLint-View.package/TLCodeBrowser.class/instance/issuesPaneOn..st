Glamour
issuesPaneOn: browser
	| fileContents |
	browser transmit 
		to: #issues; 
		from: #files;
	"	from: #styles;"
		andShow: [:presentation | 
			presentation tree 
				title: 'Issues';
				display: [ :file | 
					Cursor wait showWhile: [
						fileContents := MultiByteFileStream
							readOnlyFileNamed: file
							do: [ :stream | stream contents ].
						results := (textLintChecker parse: fileContents) results.
						(results groupedBy: [ :each | each rule class ]) values. ]];
				children: [ :item :x :level |
					item isCollection 
						ifTrue: [ item ]
						ifFalse: [ #() ]];
				format: [ :each | 
					each isCollection
						ifTrue: [ each first rule name ]
						ifFalse: [
							String streamContents: [ :stream | stream nextPutAll: (each element processFor: self)] ] ];
				updateOn: TLFileSaved from: [saveAnnouncer];
				updateOn: TLStyleChanged from:[styleAnnouncer.]
			].
		^ browser