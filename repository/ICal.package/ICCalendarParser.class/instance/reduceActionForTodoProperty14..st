generated-reduction actions
reduceActionForTodoProperty14: nodes 
	^self tempToDo created: (self 
				timestampFromICal: (self parseAttribute: (nodes at: 2) value))