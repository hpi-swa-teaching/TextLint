Glamour
issuesPaneOn: browser
	| fileContents firstResults groupedByCategory groupedByCategoryAndClass |
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
						textToCheck ifNil: [textToCheck := fileContents].
						textLintChecker reset.
						results := (textLintChecker parse: textToCheck) results.
						
						firstResults := (results groupedBy: [ :each | each rule class categorieDescriptions 
																at: each rule category ]) asOrderedCollection.
						
						groupedByCategory := OrderedCollection new.
						firstResults do: [ :each | groupedByCategory add: each asOrderedCollection].
						
						groupedByCategoryAndClass := OrderedCollection new.
						groupedByCategory do: [ :each |
												groupedByCategoryAndClass add: ((each groupedBy: [ :any | any rule class]) asOrderedCollection). 
											].
						
						groupedByCategoryAndClass.
						]];
				children: [ :item :x :level |
					item isCollection 
						ifTrue: [ item ]
						ifFalse: [ #() ]];
				format: [ :each | 
					each isCollection
						ifTrue: [ each first isCollection
									ifTrue: [each first first rule class categorieDescriptions 
												at: each first first rule category]
									ifFalse: [each first rule name] ]
						ifFalse: [
							String streamContents: [ :stream | stream nextPutAll: (each element processFor: self)] ] ];
				updateOn: TLFileSaved from: [saveAnnouncer];
				updateOn: TLStyleChanged from:[styleAnnouncer.];
				updateOn: TLTextModified from: [modifiedAnnouncer]
			].
		^ browser