generated-reduction actions
reduceActionForEventProperty6: nodes 
	^self tempEvent startDateAndTime: (self 
				dateAndTimeFromICal: (self parseAttribute: (nodes at: 3) value))