generated-reduction actions
reduceActionForTodoProperty4: nodes 
	^self tempToDo 
		unknownFieldsAppend: (nodes at: 1) value , (nodes at: 2) value