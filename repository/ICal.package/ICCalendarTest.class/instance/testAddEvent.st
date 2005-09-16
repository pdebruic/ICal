testEvents
testAddEvent
	| newAppointment newToDo appNumber toDoNumber totalEvents |
	newAppointment := ICAppointment title: 'lunch'.
	newAppointment
		type: 'normal event';
		priority: 'normal';
		startDateAndTime: (DateAndTime 
					year: 2005
					month: 10
					day: 22
					hour: 18
					minute: 30);
		endDateAndTime: (DateAndTime 
					year: 2005
					month: 10
					day: 22
					hour: 22
					minute: 1);
		category: ICCategory defaultCategories first;
		hasAlert: false.
	"place: 'universitiy mensa';"
	newToDo := ICToDo title: 'writing letters'.
	newToDo
		priority: 'low';
		category: ICCategory defaultCategories second;
		tsDeadline: (DateAndTime 
					year: 2005
					month: 6
					day: 30
					hour: 22
					minute: 0);
		text: 'bla bla'.
	appNumber := calendar appointments size.
	toDoNumber := calendar toDos size.
	totalEvents := calendar events size.
	calendar
		addEvent: newAppointment;
		addEvent: newToDo.
	self assert: calendar appointments size = (appNumber + 1).
	self assert: calendar toDos size = (toDoNumber + 1).
	self assert: calendar events size = (totalEvents + 2)