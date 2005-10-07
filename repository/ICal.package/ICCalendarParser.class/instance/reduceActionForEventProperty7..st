generated-reduction actions
reduceActionForEventProperty7: nodes 
	^self tempEvent start: (self 
				dateAndTimeFromICal: (self parseAttribute: (nodes at: 2) value))