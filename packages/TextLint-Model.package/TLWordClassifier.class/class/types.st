accessing
types
	^ self data inject: Set new into: [ :set :types | set addAll: types; yourself ]