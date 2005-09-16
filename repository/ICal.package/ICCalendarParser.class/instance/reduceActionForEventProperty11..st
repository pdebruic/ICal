generated-reduction actions
reduceActionForEventProperty11: nodes 
	^self tempEvent 
		version: (self parseAttribute: (nodes at: 2) value) asNumber