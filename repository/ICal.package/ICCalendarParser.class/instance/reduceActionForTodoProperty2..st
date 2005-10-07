generated-reduction actions
reduceActionForTodoProperty2: nodes 
	^self tempToDo due: (self 
				dateAndTimeFromICal: (self parseAttribute: (nodes at: 2) value))