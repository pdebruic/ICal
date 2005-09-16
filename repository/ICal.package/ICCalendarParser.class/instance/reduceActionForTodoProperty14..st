generated-reduction actions
reduceActionForTodoProperty14: nodes 
	^self tempToDo tsCreated: (self 
				timestampFromICal: (self parseAttribute: (nodes at: 2) value))