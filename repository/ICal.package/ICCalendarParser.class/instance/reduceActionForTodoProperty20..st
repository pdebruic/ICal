generated-reduction actions
reduceActionForTodoProperty20: nodes 
	^self tempToDo 
		unknownFieldsAppend: (nodes at: 1) value , (nodes at: 2) value