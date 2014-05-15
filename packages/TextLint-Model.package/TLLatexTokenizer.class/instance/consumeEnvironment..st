private
consumeEnvironment: aStream
	aStream upToAll: '\end{' , (aStream upTo: $}) , '}'