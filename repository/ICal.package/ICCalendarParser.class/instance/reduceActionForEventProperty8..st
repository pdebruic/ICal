generated-reduction actions
reduceActionForEventProperty8: nodes 
	^self tempEvent title: (self parseAttribute: (nodes at: 2) value)