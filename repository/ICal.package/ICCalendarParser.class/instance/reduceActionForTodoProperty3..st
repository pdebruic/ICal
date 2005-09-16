generated-reduction actions
reduceActionForTodoProperty3: nodes 
	^self tempToDo tsDeadline: (self 
				dateAndTimeFromICal: (self parseAttribute: (nodes at: 2) value))