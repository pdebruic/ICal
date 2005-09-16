generated-reduction actions
reduceActionForEventProperty16: nodes 
	^self tempEvent tsModified: (self 
				timestampFromICal: (self parseAttribute: (nodes at: 2) value))