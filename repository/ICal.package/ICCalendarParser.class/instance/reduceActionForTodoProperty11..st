generated-reduction actions
reduceActionForTodoProperty11: nodes 
	^self tempToDo 
		sequenceNumber: (self parseAttribute: (nodes at: 2) value) asNumber