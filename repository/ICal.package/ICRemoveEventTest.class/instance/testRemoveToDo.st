testing
testRemoveToDo
	event := ICTodo summary: 'working'.
	event
		addCategory: (ICCategory summary: 'second');
		due: (DateAndTime 
					year: 2005
					month: 6
					day: 24
					hour: 12
					minute: 1);
		beLowPriority.
	calendar addEvent: event.
	self removeTesting: event