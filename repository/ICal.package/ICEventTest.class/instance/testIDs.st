testing
testIDs
	| aToDo |
	self assert: appointment1 uid = 'app1'.
	self assert: appointment2 uid = 'app2'.
	self assert: todo uid = 'todo1'.
	calendar addEvent: (ICTodo summary: 'cleaning').
	aToDo := ICTodo summary: 'shopping'.
	calendar addEvent: aToDo.
	self assert: aToDo uid = 'todo3'.
	self assert: (calendar eventWithUid: 'app1') == appointment1.
	self assert: (calendar eventWithUid: 'todo2') summary = 'cleaning'