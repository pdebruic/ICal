creation
createTempToDo
	| toDo |
	toDo := ICToDo new.
	toDo calendar: self calendar.
	self events add: toDo.
	self tempToDo: toDo