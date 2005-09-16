generated-reduction actions
reduceActionForEventProperty20: nodes 
	^self tempEvent priority: (self 
				priorityFromString: (self parseAttribute: (nodes at: 2) value))