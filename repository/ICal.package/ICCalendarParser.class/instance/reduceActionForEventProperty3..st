generated-reduction actions
reduceActionForEventProperty3: nodes 
	^self tempEvent end: (self 
				dateAndTimeFromICal: (self parseAttribute: (nodes at: 2) value))