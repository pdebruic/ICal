generated-reduction actions
reduceActionForTodoProperty10: nodes 
	^self tempToDo textualDescription: (self parseAttribute: (nodes at: 2) value)