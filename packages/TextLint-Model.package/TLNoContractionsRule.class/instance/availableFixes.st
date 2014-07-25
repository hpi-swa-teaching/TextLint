accessing
availableFixes
	| fixes |
	fixes := Dictionary new.
	fixes at: 'can''t' put: 'cannot'.
	fixes at: 'won''t' put: 'will not'.
	^ fixes