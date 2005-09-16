generated-reduction actions
reduceActionForEventProperty1: nodes 
	^self tempEvent place: (self parseAttribute: (nodes at: 2) value)