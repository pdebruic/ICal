testing-events
testAddEvent
	| newEvent newToDo toDoNumber totalEvents |
	newEvent := ICEvent summary: 'lunch'.
	newEvent
		beMediumPriority;
		start: (DateAndTime 
					year: 2005
					month: 10
					day: 22
					hour: 18
					minute: 30);
		end: (DateAndTime 
					year: 2005
					month: 10
					day: 22
					hour: 22
					minute: 1);
		addCategory: (ICCategory summary: 'first').
	"place: 'universitiy mensa';"
	newToDo := ICTodo summary: 'writing letters'.
	newToDo
		beLowPriority;
		addCategory: (ICCategory summary: 'second');
		due: (DateAndTime 
					year: 2005
					month: 6
					day: 30
					hour: 22
					minute: 0);
		textualDescription: 'bla bla'.
	toDoNumber := calendar todos size.
	totalEvents := calendar events size.
	calendar
		addEvent: newEvent;
		addEvent: newToDo.
	self assert: calendar todos size = (toDoNumber + 1).
	self assert: calendar events size = (totalEvents + 2)