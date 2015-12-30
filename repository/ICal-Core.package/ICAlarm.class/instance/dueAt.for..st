times
dueAt: aDateAndTime for: anICTodo
	^ (anICTodo alarmTimeFor: trigger) = aDateAndTime