test
testCaseFailureWithCaseStudyAndSeparator

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |

	words := OrderedCollection new.
	words add: (aWord := TLWord with: (PPToken on: 'case')).
	words add: (TLPunctuationMark with: (PPToken on: '-')).
	words add: (TLWord with: (PPToken on: 'study')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLCaseRule new.
	results := aRule runOn: aDocument.
	self assert: results isEmpty