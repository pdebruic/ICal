generated-reduction actions
reduceActionForTodoProperty5: nodes 
	^self tempToDo 
		id: (self parseAttribute: (nodes at: 2) value)