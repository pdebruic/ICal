generated-reduction actions
reduceActionForTodoProperty9: nodes 
	^self tempToDo title: (self parseAttribute: (nodes at: 2) value)