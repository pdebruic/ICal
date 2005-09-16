tests
testUpdateToDo
	| todoEvent |
	todoEvent := ICToDo title: 'todo'.
	todoEvent updateEventWith: todo.
	self assert: todoEvent title = todo title.
	self assert: todoEvent category == todo category.
	self assert: todoEvent text = todo text.
	self assert: todoEvent status = todo status.
	self assert: todoEvent priority = todo priority.
	self assert: todoEvent tsCreated = todo tsCreated.
	self assert: todoEvent tsModified = todo tsModified.
	self assert: todoEvent version = todo version.
	self assert: todoEvent tsDeadline = todo tsDeadline