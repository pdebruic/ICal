generated-reduction actions
reduceActionForTodoProperty1: nodes 
	^self tempToDo priority: ((self parseAttribute: (nodes at: 2) value) asInteger)