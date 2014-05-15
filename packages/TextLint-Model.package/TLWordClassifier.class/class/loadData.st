private
loadData
	"Load data from an external file as fast as possible."

	| result stream |
	(self directory fileExists: self filename)
		ifFalse: [ self downloadData ].
	(self directory fileExists: self filename)
		ifFalse: [ self error: 'The word classification cannot be downloaded from <' , self url , '>.' ].
	result := Dictionary new.
	stream := self directory
		oldFileNamed: self filename.
	[	| zstream |
		zstream := ZLibReadStream on: stream binary.
		[ zstream atEnd ] whileFalse: [
			(result at: (String withAll: (zstream next: zstream next)) ifAbsentPut: [ Set new ])
				add: (String withAll: (zstream next: zstream next)) asSymbol ] ] 
		ensure: [ stream close ].
	result keysAndValuesDo: [ :key :values |
		result at: key put: values sorted ].
	^ result