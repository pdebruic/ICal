generated-reduction actions
reduceActionForTodoProperty3: nodes 
	^self tempToDo due: (self 
				dateAndTimeFromICal: (self parseAttribute: (nodes at: 2) value))