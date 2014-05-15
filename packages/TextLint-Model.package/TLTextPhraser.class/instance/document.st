accessing
document
	^ super document ==> [ :nodes | TLDocument withAll: nodes first ]