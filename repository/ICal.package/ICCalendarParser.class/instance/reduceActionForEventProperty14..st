generated-reduction actions
reduceActionForEventProperty14: nodes 
	^self tempEvent tsCreated: (self 
				timestampFromICal: (self parseAttribute: (nodes at: 2) value))