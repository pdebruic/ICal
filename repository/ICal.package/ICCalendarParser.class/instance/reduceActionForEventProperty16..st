generated-reduction actions
reduceActionForEventProperty16: nodes 
	^self tempEvent lastModified: (self 
				timestampFromICal: (self parseAttribute: (nodes at: 2) value))