running
setUp
	calendar := ICCalendar name: 'test'.
	appointment := ICEvent summary: 'aTitle'.
	appointment location: 'Bern'.
	appointment textualDescription: 'description'.
	appointment addCategory: (ICCategory summary: 'first').
	appointment start: (DateAndTime 
				year: 2005
				month: 4
				day: 18
				hour: 21
				minute: 1).
	appointment end: (DateAndTime 
				year: 2005
				month: 4
				day: 18
				hour: 23
				minute: 59).
