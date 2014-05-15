tools
analyzeHistory: aDirectory
	"self analyzeHistory: (FileDirectory on: '/Users/renggli/University/git/papers/TextLint/TextLint-IWST2010/casestudy-history/petitparser')"
	"self analyzeHistory: (FileDirectory on: '/Users/renggli/University/git/papers/TextLint/TextLint-IWST2010/casestudy-history/J2EE')"
	"self analyzeHistory: (FileDirectory on: '/Users/renggli/University/git/papers/TextLint/TextLint-IWST2010/casestudy-history/cop')"
	"self analyzeHistory: (FileDirectory on: '/Users/renggli/University/git/papers/TextLint/TextLint-IWST2010/casestudy-history/pinocchio')"
	
	| checker results |
	checker := TLTextLintChecker new.
	results := OrderedCollection new.
	(TLWritingStyle scientificPaperStyle rules
		asSortedCollection: [ :a :b | a name < b name ])
		do: [ :each | checker addRule: each ].
	aDirectory fileNames asSortedCollection 
		do: [ :filename |
			| stream contents document failures |
			stream := MultiByteFileStream new initialize.
			stream open: (aDirectory fullNameFor: filename) forWrite: false.
			contents := [ stream basicNext: stream size ] ensure: [ stream close ].
			document := TLTextPhraser parse: (TLLatexTokenizer parse: contents).
			failures := document allElements gather: [ :each | each checkWith: checker ].
			results addLast: (Array 
				with: (filename)
				with: (contents size)
				with: (document sentences detectSum: [ :sentence | 
					sentence children detectSum: [ :element | 
						element class = TLMarkup
							ifTrue: [ 0 ]
							ifFalse: [ element token size ] ] ])
				with: (failures size)) , (checker rules
					collect: [ :each | failures count: [ :failure | failure rule == each ] ]) ]
		displayingProgress: 'Analyzing History'.
	FileStream forceNewFileNamed: (aDirectory containingDirectory fullNameFor: aDirectory localName , '.txt') do: [ :stream |
		stream nextPutAll: 'Filename'; tab; nextPutAll: 'Filesize'; tab; nextPutAll: 'Textsize'; tab; nextPutAll: 'Failures'; tab.
		checker rules
			do: [ :rule | stream nextPutAll: rule name ]
			separatedBy: [ stream tab ].
		stream cr.
		results 
			do: [ :row | 	
				row 
					do: [ :col | stream nextPutAll: col asString ]
					separatedBy: [ stream tab ] ]
			separatedBy: [ stream cr ] ].
	^ results