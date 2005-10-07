generated-reduction actions
reduceActionForEventProperty6: nodes 
	^self tempEvent start: (self 
				dateAndTimeFromICal: (self parseAttribute: (nodes at: 3) value))