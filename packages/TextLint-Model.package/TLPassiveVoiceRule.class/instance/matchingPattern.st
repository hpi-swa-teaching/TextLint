accessing
matchingPattern
	"http://matt.might.net/articles/shell-scripts-for-passive-voice-weasel-words-duplicates/"

	^ (self wordIn: self verbWords) , (self separators) , ((self wordTextSatisfying: [ :value | value endsWith: 'ed' ]) / (self wordIn: self irregularWords))