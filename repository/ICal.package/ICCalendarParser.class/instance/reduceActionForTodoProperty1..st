generated-reduction actions
reduceActionForTodoProperty1: nodes 
	^self tempToDo priority: (self 
				priorityFromString: (self parseAttribute: (nodes at: 2) value))