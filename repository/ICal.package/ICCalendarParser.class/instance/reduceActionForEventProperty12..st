generated-reduction actions
reduceActionForEventProperty12: nodes 
	^self tempEvent category: (self 
				categoryForString: (self parseAttribute: (nodes at: 2) value))