generated-reduction actions
reduceActionForTodoProperty16: nodes 
	self tempToDo beCompleted.
	^self tempToDo completed: (self 
				timestampFromICal: (self parseAttribute: (nodes at: 2) value))