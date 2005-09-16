generated-reduction actions
reduceActionForTodoProperty2: nodes 
	^self tempToDo tsDeadline: (self 
				dateAndTimeFromICal: (self parseAttribute: (nodes at: 2) value))