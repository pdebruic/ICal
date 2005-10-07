generated-reduction actions
reduceActionForTodoProperty12: nodes 
	^self tempToDo addCategory: (self 
				categoryForString: (self parseAttribute: (nodes at: 2) value))