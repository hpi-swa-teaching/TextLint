grammar
elementList
	"We need at least one term, otherwise we would match anything."
	
	^ element plus foldLeft: [ :a :b | a , b ]