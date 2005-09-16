generated-reduction actions
reduceActionForTodoProperty11: nodes 
	^self tempToDo 
		version: (self parseAttribute: (nodes at: 2) value) asNumber