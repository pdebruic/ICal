adding
addAllNoDaemon: aCollection 
	aCollection
		do: [:elt | self addLast: elt].
	^ aCollection