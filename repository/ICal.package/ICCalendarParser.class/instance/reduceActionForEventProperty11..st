generated-reduction actions
reduceActionForEventProperty11: nodes 
	^self tempEvent 
		sequenceNumber: (self parseAttribute: (nodes at: 2) value) asNumber