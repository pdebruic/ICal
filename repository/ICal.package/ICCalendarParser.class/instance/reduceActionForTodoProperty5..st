generated-reduction actions
reduceActionForTodoProperty5: nodes 
	^self tempToDo 
		uid: (self parseAttribute: (nodes at: 2) value)