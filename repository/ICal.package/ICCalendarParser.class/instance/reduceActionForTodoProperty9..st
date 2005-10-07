generated-reduction actions
reduceActionForTodoProperty9: nodes 
	^self tempToDo summary: (self parseAttribute: (nodes at: 2) value)