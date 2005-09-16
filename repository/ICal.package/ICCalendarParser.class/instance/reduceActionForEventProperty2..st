generated-reduction actions
reduceActionForEventProperty2: nodes 
	^self tempEvent endDateAndTime: (self 
				dateAndTimeFromICal: (self parseAttribute: (nodes at: 3) value))