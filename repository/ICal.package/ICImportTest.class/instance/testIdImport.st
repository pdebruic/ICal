tests
testIdImport

	parser events add: toDo.
	self assert: (parser idFromString: 'http://localhost:8080/seaside/smallwiki/Calendar/todo17') = 'todo17'.
	self assert: (parser idFromString: 'http://localhost:8080/2/todo7589') = 'todo7589'.
	self assert: (parser idFromString: 'localhost/2/todo1') = 'todo1'.
	self assert: (parser idFromString: 'localhost/2/to1') = 0.
	self assert: (parser idFromString: 'localhost2todo1') = 0.
	
	parser events add: appointment.
	self assert: (parser idFromString: 'http://localhost:8080/seaside/smallwiki/Calendar/app17') = 'app17'.
	self assert: (parser idFromString: 'http://localhost:8080/2/app7589') = 'app7589'.
	self assert: (parser idFromString: 'localhost/2/app1') = 'app1'.
	self assert: (parser idFromString: 'http://localhost:8080/2/ap7589') = 0.	