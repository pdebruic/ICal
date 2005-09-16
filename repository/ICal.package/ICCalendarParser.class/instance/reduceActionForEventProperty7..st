generated-reduction actions
reduceActionForEventProperty7: nodes 
	^self tempEvent startDateAndTime: (self 
				dateAndTimeFromICal: (self parseAttribute: (nodes at: 2) value))