token
markup
	^ ${ asParser , #word asParser plus token , $} asParser map: [ :open :token :close |
		| type |
		type := token value asSymbol.
		(TLWordClassifier types includes: type)
			ifFalse: [ PPFailure message: 'Invalid word type: ' , token value at: token start ]
			ifTrue: [
				PPPredicateObjectParser
					on: [ :each | each isWord and: [ each classification includes: type ] ]
					message: token value , ' expected' ] ]