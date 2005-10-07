generated-reduction actions
reduceActionForTodoProperty13: nodes 
	^self tempToDo created: (self 
				timestampFromICal: (self parseAttribute: (nodes at: 2) value))