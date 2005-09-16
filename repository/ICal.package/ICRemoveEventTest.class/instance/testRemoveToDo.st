tests
testRemoveToDo
	event := ICToDo title: 'working'.
	event
		category: ICCategory defaultCategories second;
		tsDeadline: (DateAndTime 
					year: 2005
					month: 6
					day: 24
					hour: 12
					minute: 1);
		hasAlert: false;
		priority: 'low'.
	calendar addEvent: event.
	self removeTesting: event