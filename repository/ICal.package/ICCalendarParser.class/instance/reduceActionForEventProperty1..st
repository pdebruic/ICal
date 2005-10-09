generated-reduction actions
reduceActionForEventProperty1: nodes 
	^self tempEvent location: (self parseAttribute: (nodes at: 2) value)