private
loadData
	"Load data from an external file as fast as possible."

	| result stream |
	(self directory fileExists: self filename)
		ifFalse: [ self downloadData ].
	(self directory fileExists: self filename)
		ifFalse: [ self error: 'The thesaurus cannot be downloaded from <' , self url , '>.' ].
	result := Dictionary new.
	stream := self directory
		oldFileNamed: self filename.
	[	| zstream |
		zstream := ZLibReadStream on: stream binary.
		[ zstream atEnd ] whileFalse: [
			| words count |
			words := OrderedCollection new: (count := zstream nextInt32).
			count timesRepeat: [ words addLast: (String withAll: (zstream next: zstream next)) ].
			result at: words first put: words sorted asArray ] ]
		ensure: [ stream close ].
	result keysAndValuesDo: [ :key :values |
		result at: key put: values sorted ].
	^ result