private - filtering
intersect: aCollection with: bCollection
	|a b|

	a := aCollection at: 1 ifAbsent: [ nil ].
	b := bCollection at: 1 ifAbsent: [ nil ].
	
	^ true caseOf: {
		[ aCollection isEmpty or: [ bCollection isEmpty ] ] -> [ LazyNil new ].
		[ a endsBefore: b ] -> [ self intersect: aCollection allButFirst with: bCollection ].
		[ b endsBefore: a ] -> [ self intersect: aCollection with: bCollection allButFirst ].
	} otherwise: [ |aCol bCol|
		aCol := aCollection allButFirst.
		bCol := bCollection allButFirst.
		true caseOf: {
			[ a end < b end ] -> [ bCol := bCollection ].
			[ a end > b end ] -> [ aCol := aCollection ].
		} otherwise: [].
		
		LazyElement
			cons: (a compareTo: b)
			with: (LazyValue delay: [ self intersect: aCol with: bCol ])
	]