generated-reduction actions
reduceActionForTodoProperty10: nodes 
	^self tempToDo text: (self parseAttribute: (nodes at: 2) value)