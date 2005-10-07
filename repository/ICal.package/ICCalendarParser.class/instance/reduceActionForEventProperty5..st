generated-reduction actions
reduceActionForEventProperty5: nodes 
	^self tempEvent 
		uid: (self parseAttribute: (nodes at: 2) value)