as yet unclassified
setUp
	| category |
	calendar := ICCalendar new.
	appointment1 := ICEvent summary: 'diner'.
	category := ICCategory summary: 'friends'.
	appointment1 addCategory: category.
	appointment1 uid: 'app1'.
	appointment1
		start: (DateAndTime 
					year: 2006
					month: 8
					day: 9
					hour: 14
					minute: 55);
		end: (DateAndTime 
					year: 2006
					month: 8
					day: 9
					hour: 14
					minute: 57).
	appointment1 beLowPriority.
	appointment1 location: 'in nature'.
	appointment2 := ICEvent summary: 'running'.
	appointment2 uid: 'app2'.
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
	todo uid: 'todo1'.
	todo due: (DateAndTime now + 4 days).
	calendar addEvent: appointment1.
	calendar addEvent: appointment2.
	calendar addEvent: todo