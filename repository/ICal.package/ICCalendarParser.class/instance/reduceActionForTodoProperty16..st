generated-reduction actions
reduceActionForTodoProperty16: nodes 
	self tempToDo status: 'completed'.
	^self tempToDo tsCompleted: (self 
				timestampFromICal: (self parseAttribute: (nodes at: 2) value))