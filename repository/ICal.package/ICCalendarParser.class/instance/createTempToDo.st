creation
createTempToDo
	| toDo |
	toDo := ICTodo new.
	self events add: toDo.
	self tempToDo: toDo