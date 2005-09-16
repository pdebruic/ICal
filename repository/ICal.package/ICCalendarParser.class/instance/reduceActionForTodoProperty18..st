generated-reduction actions
reduceActionForTodoProperty18: nodes 
	^self tempToDo tsModified: (self 
				timestampFromICal: (self parseAttribute: (nodes at: 2) value))