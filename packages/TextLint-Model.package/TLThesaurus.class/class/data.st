accessing
data
	^ ThesaurusTable ifNil: [ ThesaurusTable := self loadData ]