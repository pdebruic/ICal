generated-reduction actions
reduceActionForTodoProperty6: nodes 
	^self tempToDo 
		unknownFieldsAppend: (nodes at: 1) value , (nodes at: 2) value 
				, (nodes at: 3) value