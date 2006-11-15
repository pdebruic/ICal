testing
compare: aCollection with: anotherCollection
	aCollection size = anotherCollection size ifFalse: [ ^ false ].
	
	1 to: aCollection size do: [ :index |
		(aCollection at: index) start = (anotherCollection at: index) start
			ifFalse: [ ^ false. ]
	].

	^ true.