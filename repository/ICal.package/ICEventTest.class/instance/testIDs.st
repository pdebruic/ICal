tests
testIDs
	| aToDo |
	self assert: appointment1 id = 'app1'.
	self assert: appointment2 id = 'app2'.
	self assert: todo id = 'todo1'.
	calendar addEvent: (ICToDo title: 'cleaning').
	aToDo := ICToDo title: 'shopping'.
	calendar addEvent: aToDo.
	self assert: aToDo id = 'todo3'.
	self assert: (calendar eventWithId: 'app1') == appointment1.
	self assert: (calendar eventWithId: 'todo2') title = 'cleaning'