adding
addAll: aCollection 
	aCollection
		do: [:elt | self add: elt].
	^ aCollection