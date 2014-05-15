accessing
classify: aString
	"Answer the possibly classifications of aString."
	
	^ self data at: aString asLowercase ifAbsent: [ #() ]