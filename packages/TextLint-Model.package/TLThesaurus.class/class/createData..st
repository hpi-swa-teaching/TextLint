private
createData: aString
	"Create the thesarus from http://www.gutenberg.org/ebooks/3202"
	"self createData: '/Users/renggli/Downloads/mthesaur.txt'"

	| input output zipped |
	input := FileStream fileNamed: aString.
	input converter: Latin1TextConverter new.
	output := self directory
		forceNewFileNamed: self filename.
	zipped := ZLibWriteStream on: output binary.
	[ input atEnd ] whileFalse: [
		| words |
		words := ((input nextLine findTokens: $,)
			reject: [ :each | each anySatisfy: [ :char | char = $ ] ])
			collect: [ :each | each asLowercase ].
		words isEmpty ifFalse: [
			zipped nextInt32Put: words size.
			words
				do: [ :word | zipped nextPut: word size; nextPutAll: (ByteArray withAll: word) ] ] ].
	zipped close.
	output close