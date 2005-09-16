generated-reduction actions
reduceActionForTodoProperty12: nodes 
	^self tempToDo category: (self 
				categoryForString: (self parseAttribute: (nodes at: 2) value))