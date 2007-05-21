private
events: aEventCollection equal: bEventCollection

	aEventCollection with: bEventCollection do: [:aEvent :bEvent | 
		(aEvent start = bEvent start and: [aEvent end = bEvent end])
			ifFalse: [^ false ] ].

	^ true