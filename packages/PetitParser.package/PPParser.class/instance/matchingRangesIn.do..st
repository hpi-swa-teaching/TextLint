parsing
matchingRangesIn: anObject do: aBlock
	"Search anObject repeatedly for the matches of the receiver. Evaluate aBlock with the range of each match (index of first character to: index of last character)."
	
	[ :stream | stream position + 1 ] asParser , self , [ :stream | stream position ] asParser
		matchesIn: anObject
		do: [ :value | aBlock value: (value first to: value last) ]