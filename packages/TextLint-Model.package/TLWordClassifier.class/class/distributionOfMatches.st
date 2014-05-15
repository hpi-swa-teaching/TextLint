accessing
distributionOfMatches
	^ self data inject: Bag new into: [ :bag :types | bag add: types size; yourself ]