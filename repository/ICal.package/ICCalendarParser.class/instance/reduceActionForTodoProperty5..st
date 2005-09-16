generated-reduction actions
reduceActionForTodoProperty5: nodes 
	^self tempToDo 
		id: (self idFromString: (self parseAttribute: (nodes at: 2) value))