parsing
matchingSkipRangesIn: anObject do: aBlock
	"Search anObject repeatedly for the matches of the receiver. Skip over matches. Evaluate aBlock with the range of each match (index of first character to: index of last character)."
	
	[ :stream | stream position + 1 ] asParser , self , [ :stream | stream position ] asParser
		matchesSkipIn: anObject
		do: [ :value | aBlock value: (value first to: value last) ]