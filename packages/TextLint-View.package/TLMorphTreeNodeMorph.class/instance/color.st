as yet unclassified
color

self indentLevel = 0 ifFalse: [ ^complexContents color ifNil: [self index ifNotNil: [container rowColors at: ((self index \\ 2) + 1)]]].
^ (TLTextLintRule categoryColors at: (((complexContents contents at: 1) contents at: 1)  item rule category)) color alpha: 0.3.
