adding
addCalendar: calendar id: id color: colorString 
	
	calendar events do: 
			[:evt | 
			| we |
			we := ICWebEvent new.
			we parent: todoList.
			
			we calendar: calendar.
			
			we event: evt.
			we color: colorString.
			events add: we].
	calendar todos do: 
			[:todo | 
			| wt |
			wt := ICWebTodo new.
			wt todo: todo.
			wt calendar: calendar.
			wt color: colorString.
			todos add: wt]