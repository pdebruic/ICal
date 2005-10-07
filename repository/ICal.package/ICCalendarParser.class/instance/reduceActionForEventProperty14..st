generated-reduction actions
reduceActionForEventProperty14: nodes 
	^self tempEvent created: (self 
				timestampFromICal: (self parseAttribute: (nodes at: 2) value))