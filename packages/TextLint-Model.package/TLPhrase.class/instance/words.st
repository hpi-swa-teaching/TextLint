accessing
words
	^ syntacticElements select: [:eachToken | eachToken isWord ]