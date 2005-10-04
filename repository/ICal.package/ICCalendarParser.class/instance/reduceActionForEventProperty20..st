generated-reduction actions
reduceActionForEventProperty20: nodes 
	^self tempEvent priority: ((self parseAttribute: (nodes at: 2) value) asInteger)