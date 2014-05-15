accessing
distributionOfTypes
	^ self data inject: Bag new into: [ :bag :types | bag addAll: types; yourself ]