accessing
synonymsOf: aString
	^ self data at: aString asLowercase ifAbsent: [ #() ]