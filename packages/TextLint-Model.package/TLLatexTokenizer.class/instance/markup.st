tokens
markup
	^ ((PPPredicateObjectParser anyOf: '{}[]`-')
	/  ('\begin{' asParser , self ignoredEnvironments and , [ :stream | self consumeEnvironment: stream ] asParser)
	/  ($\ asParser , self ignoredCommands , [ :stream | self consumeCommand: stream ] asParser)
	/  ($\ asParser , #any asParser , #word asParser star)
	/  ($$ asParser , $$ asParser negate star , $$ asParser)
	/  ($% asParser , #newline asParser negate star))
			token ==> [ :token | TLMarkup with: token ]