tests
testSave
	| savedToDo deadLine todo |
	deadLine := TimeStamp now plusDays: 1.
	todo := ICToDo new
				category: ICCategory defaultCategories second;
				title: 'writing a letter';
				priority: 'low';
				text: 'this should be a real letter not an email';
				hasAlert: false;
				tsDeadline: deadLine;
				tsCompleted: false;
				yourself.
	calendar addEvent: todo.
	savedToDo := calendar toDos first.
	self assert: calendar toDos size = 1.
	self assert: savedToDo category = ICCategory defaultCategories second.
	self assert: savedToDo title = 'writing a letter'.
	self assert: savedToDo priority = 'low'.
	self assert: savedToDo text = 'this should be a real letter not an email'.
	self assert: savedToDo tsDeadline = deadLine.
	self deny: savedToDo hasAlert