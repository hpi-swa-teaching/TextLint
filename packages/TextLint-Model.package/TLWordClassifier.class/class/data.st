accessing
data
	^ ClassificationTable ifNil: [ ClassificationTable := self loadData ]