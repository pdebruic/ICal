generated-reduction actions
reduceActionForEventProperty5: nodes 
	^self tempEvent 
		id: (self parseAttribute: (nodes at: 2) value)