tools
analyzeEffectiveness: aDirectory
	"self analyzeEffectiveness: (FileDirectory on: '/Users/renggli/University/git/papers/TextLint/TextLint-IWST2010/casestudy')"
	
	| checker results |
	checker := TLTextLintChecker new.
	results := OrderedCollection new.
	(TLWritingStyle scientificPaperStyle rules
		asSortedCollection: [ :a :b | a name < b name ])
		do: [ :each | checker addRule: each ].
	(aDirectory fileNames asSortedCollection
		select: [ :each | each endsWith: '.txt' ])
		do: [ :filename |
			| stream count last size average |
			stream := MultiByteFileStream new initialize.
			stream open: (aDirectory fullNameFor: filename) forWrite: false.
			stream nextLine.
			count := 0.
			average := Array new: checker rules size + 1 withAll: 0.
			[ stream atEnd ] whileFalse: [
				count := count + 1.
				last := stream nextLine splitOn: String tab.
				size := (last at: 3) asNumber asFloat.
				last := (last allButFirst: 3)
					collect: [ :each | each asNumber / size ].
				average keysAndValuesDo: [ :key :value | average at: key put: value + (last at: key) ] ].
			average keysAndValuesDo: [ :key :value | average at: key put: value / count asFloat ].
			results addLast: (Array with: filename) , (Array streamContents: [ :output |
				average with: last do: [ :a :l |
					output nextPut: (a isZero
						ifTrue: [ 0 ]
						ifFalse: [ (100.0 - (100.0 * l / a)) rounded ]) ] ]) ]
		displayingProgress: 'Calculating Effectiveness'.
	FileStream forceNewFileNamed: (aDirectory containingDirectory fullNameFor: 'casestudy-effectiveness/effectiveness.txt') do: [ :stream |
		stream nextPutAll: 'Filename'; tab; nextPutAll: 'Total'; tab.
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