generated-reduction actions
reduceActionForTodoProperty18: nodes 
	^self tempToDo lastModified: (self 
				timestampFromICal: (self parseAttribute: (nodes at: 2) value))