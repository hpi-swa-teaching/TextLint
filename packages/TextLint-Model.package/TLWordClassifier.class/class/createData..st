private
createData: aString
	"Create the wordlist. The wordlist we use is from English Wiktionary. The contents of these files is Copyright to the contributors of the English Wiktionary under CC-SA-BY <http://creativecommons.org/licenses/by-sa/3.0/>, see <http://wikimediafoundation.org/wiki/Terms_of_Use> for more information. As a source we started from the latest english words available at <http://toolserver.org/~enwikt/definitions/> and processed them with
	
	awk -F '\t' '{ printf ""%s\t%s\n"", tolower($2), tolower($3) }' enwikt-defs-latest-en.tsv | egrep '^[A-Za-z]+.[a-z ]+$' | sed -e 's/proper noun/noun/' -e 's/cardinal number/number/' -e 's/verb form/verb/' -e 's/ordinal number/number/' | grep -v ' ' | sort | uniq | awk -F '\t' '{ printf ""%s\n%s\n"", $1, $2 }' > tl-words.txt"
	
	"self createData: '/Users/renggli/Downloads/tl-words.txt'"

	| input output zipped |
	input := FileStream fileNamed: aString.
	input converter: Latin1TextConverter new.
	output := self directory
		forceNewFileNamed: self filename.
	zipped := ZLibWriteStream on: output binary.
	[ input atEnd ] whileFalse: [
		| word |
		word := input nextLine.
		zipped nextPut: word size; nextPutAll: (ByteArray withAll: word) ].
	zipped close.
	output close