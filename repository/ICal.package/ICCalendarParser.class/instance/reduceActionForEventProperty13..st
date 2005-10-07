generated-reduction actions
reduceActionForEventProperty13: nodes 
	^self tempEvent created: (self 
				timestampFromICal: (self parseAttribute: (nodes at: 2) value))