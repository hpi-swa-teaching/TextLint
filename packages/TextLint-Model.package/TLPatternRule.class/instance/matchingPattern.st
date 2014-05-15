accessing
matchingPattern
	"Override in subclasses to answer a custom pattern parser."
	
	^ TLPatternTokenizer parse: self matchingString