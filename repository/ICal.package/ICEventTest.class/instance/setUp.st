running
setUp
	| category |
	calendar := ICCalendar new.
	appointment1 := ICEvent summary: 'diner'.
	category := ICCategory summary: 'friends'.
	appointment1 addCategory: category.
	appointment1
		start: (DateAndTime 
					year: 2005
					month: 5
					day: 18
					hour: 17
					minute: 0);
		end: (DateAndTime 
					year: 2005
					month: 5
					day: 18
					hour: 20
					minute: 0).
	appointment1 beLowPriority.
	appointment1 calendar: calendar.
	appointment1 place: 'in nature'.
	appointment2 := ICEvent summary: 'running'.
	appointment2
		start: (DateAndTime 
					year: 2005
					month: 6
					day: 12
					hour: 8
					minute: 30);
		end: (DateAndTime 
					year: 2005
					month: 6
					day: 12
					hour: 9
					minute: 40).
	todo := ICTodo summary: 'clean the living-room'.
	todo due: (DateAndTime now + 4 days).
	calendar addEvent: appointment1.
	calendar addEvent: appointment2.
	calendar addEvent: todo