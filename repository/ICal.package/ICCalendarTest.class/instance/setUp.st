configuration
setUp
	| category2 |
	calendar := ICCalendar title: 'Veriveris Calendar'.
	appointment1 := ICAppointment title: 'first date'.
	appointment1 calendar: calendar.
	appointment1 place: 'swimmingpool'.
	appointment1 type: 'Event'.
	appointment1 category: (ICCategory defaultCategories at: 2).
	appointment1 startDateAndTime: (DateAndTime 
				year: 2005
				month: 5
				day: 20
				hour: 19
				minute: 1).
	appointment1 endDateAndTime: (DateAndTime 
				year: 2005
				month: 5
				day: 20
				hour: 23
				minute: 1).
	appointment2 := ICAppointment title: 'diner with...'.
	appointment2 calendar: calendar.
	appointment2 place: 'Bellvue Bern'.
	appointment2 type: 'Event'.
	appointment2 text: 'it is with ...'.
	appointment2 category: (ICCategory defaultCategories at: 2).
	appointment2 startDateAndTime: (DateAndTime 
				year: 2005
				month: 5
				day: 24
				hour: 20
				minute: 1).
	appointment2 endDateAndTime: (DateAndTime 
				year: 2005
				month: 5
				day: 24
				hour: 22
				minute: 1).
	toDo := ICToDo title: 'repairing my bike'.
	toDo
		priority: ICEvent defaultPriorities first;
		category: ICCategory defaultCategories second;
		tsDeadline: (DateAndTime 
					year: 2005
					month: 7
					day: 30
					hour: 22
					minute: 0);
		text: 'bla bla'.
	category1 := ICCategory title: 'personal'.
	category2 := ICCategory title: 'music school'.
	calendar
		addEvent: appointment1;
		addEvent: toDo.
	calendar addCategory: category2.
	calendar addPlace: 'IAM BERN'.
	calendar addPlace: 'Geneve'