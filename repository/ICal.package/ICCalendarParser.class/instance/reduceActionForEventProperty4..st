generated-reduction actions
reduceActionForEventProperty4: nodes 
	^self tempEvent 
		status: (self statusFromString: (self parseAttribute: (nodes at: 2) value))