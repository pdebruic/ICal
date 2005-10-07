running
setUp
	| category2 |
	calendar := ICCalendar summary: 'Veriveris Calendar'.
	appointment1 := ICEvent summary: 'first date'.
	appointment1 calendar: calendar.
	appointment1 place: 'swimmingpool'.
	appointment1 addCategory: (ICCategory summary: 'second').
	appointment1 start: (DateAndTime 
				year: 2005
				month: 5
				day: 20
				hour: 19
				minute: 1).
	appointment1 end: (DateAndTime 
				year: 2005
				month: 5
				day: 20
				hour: 23
				minute: 1).
	appointment2 := ICEvent summary: 'diner with...'.
	appointment2 calendar: calendar.
	appointment2 place: 'Bellvue Bern'.
	appointment2 textualDescription: 'it is with ...'.
	appointment2 addCategory: (ICCategory summary: 'second').
	appointment2 start: (DateAndTime 
				year: 2005
				month: 5
				day: 24
				hour: 20
				minute: 1).
	appointment2 end: (DateAndTime 
				year: 2005
				month: 5
				day: 24
				hour: 22
				minute: 1).
	toDo := ICTodo summary: 'repairing my bike'.
	toDo
		beLowPriority;
		addCategory: (ICCategory summary: 'second');
		due: (DateAndTime 
					year: 2005
					month: 7
					day: 30
					hour: 22
					minute: 0);
		textualDescription: 'bla bla'.
	category1 := ICCategory summary: 'personal'.
	category2 := ICCategory summary: 'music school'.
	calendar
		addEvent: appointment1;
		addEvent: toDo.
	calendar addCategory: category2