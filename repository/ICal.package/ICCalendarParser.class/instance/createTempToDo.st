creation
createTempToDo
	| toDo |
	toDo := ICTodo new.
	toDo calendar: self calendar.
	self events add: toDo.
	self tempToDo: toDo