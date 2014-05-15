accessing
elementList
	^ super elementList ==> [ :nodes | nodes copyWith: (TLTerminatorMark with: '') ]