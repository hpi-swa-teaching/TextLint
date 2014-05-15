private
analyze
	| paperNames allFailures aChecker file fileContents author checker |
	aChecker := TLTextLintChecker new.
	TLWritingStyle scientificPaperStyle rules
		do: [:rule | aChecker addRule: rule].
	allFailures := Dictionary new.
	paperNames := (FileDirectory on: '/Users/ressia/temp/Papers/Helvetia') fullNamesOfAllFilesInSubtree
				select: [:each | each endsWith: '.tex'].
	paperNames
		do: [:each | 
			fileContents := (StandardFileStream readOnlyFileNamed: each) contentsOfEntireFile.
			fileContents := (fileContents copyReplaceAll: String crlf with: String cr)
						copyReplaceAll: String lf
						with: String cr.
			author := nil.
			(fileContents findString: '% $Author:'  startingAt: 1 ) = 0 
				ifFalse: [author := fileContents copyFrom: (fileContents findString: '% $Author:'  startingAt: 1 ) to: (fileContents findDelimiters: '$' startingAt: (fileContents findString: '% $Author:'  startingAt: 1 ) )].
			(fileContents findString: '\author{'  startingAt: 1 ) = 0 
				ifFalse: [author := fileContents copyFrom: (fileContents findString: '\author{'  startingAt: 1 ) to: (fileContents findDelimiters: '}' startingAt: (fileContents findString: '\author{'  startingAt: 1 ) )].
			checker := aChecker parse: fileContents.
			allFailures at: each put: checker results ].
	file := CrLfFileStream forceNewFileNamed: '/Users/ressia/temp/SCGPapersTextLintFailures.txt'.
	^ allFailures
		keysAndValuesDo: [:key :value | value
				do: [:eachFailure | file nextPutAll: key;
						 nextPutAll: '	';
						 nextPutAll: author asString;
						 nextPutAll: '	';
						 nextPutAll: eachFailure rule class name;
						 nextPutAll: '	';
						 nextPutAll: eachFailure element text;
						 nextPutAll: '
													']]

												
