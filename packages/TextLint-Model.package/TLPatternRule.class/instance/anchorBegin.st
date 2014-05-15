factory
anchorBegin
	^ [ :stream | stream position = 0 ifFalse: [ PPFailure message: 'begin of input expected' at: stream position ] ] asParser