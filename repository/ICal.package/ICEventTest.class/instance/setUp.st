configuration
setUp
	| category |
	calendar := ICCalendar title: 'test'.
	appointment1 := ICAppointment title: 'diner'.
	category := ICCategory title: 'friends'.
	appointment1 category: category.
	appointment1
		startDateAndTime: (DateAndTime 
					year: 2005
					month: 5
					day: 18
					hour: 17
					minute: 0);
		endDateAndTime: (DateAndTime 
					year: 2005
					month: 5
					day: 18
					hour: 20
					minute: 0).
	appointment1 priority: (ICAppointment defaultPriorities first).
	appointment1 calendar: calendar.
	appointment1 place: 'in nature'.
	appointment2 := ICAppointment title: 'running'.
	appointment2
		startDateAndTime: (DateAndTime 
					year: 2005
					month: 6
					day: 12
					hour: 8
					minute: 30);
		endDateAndTime: (DateAndTime 
					year: 2005
					month: 6
					day: 12
					hour: 9
					minute: 40).
	eventSerie := ICEventSerie title: 'cooking'.
	eventSerie addEvent: (ICAppointment title: 'cook fish').
	todo := ICToDo title: 'clean the living-room'.
	todo tsDeadline: (TimeStamp now plusDays: 4).
	calendar addEvent: appointment1.
	calendar addEvent: appointment2.
	calendar addEvent: todo.
	calendar addEvent: eventSerie