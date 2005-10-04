configuration
setUp
	calendar := ICCalendar title: 'test'.
	appointment := ICEvent title: 'aTitle'.
	appointment calendar: calendar.
	appointment place: 'Bern'.
	appointment text: 'description'.
	appointment type: 'Event'.
	appointment category: ICCategory defaultCategories first.
	appointment startDateAndTime: (DateAndTime 
				year: 2005
				month: 4
				day: 18
				hour: 21
				minute: 1).
	appointment endDateAndTime: (DateAndTime 
				year: 2005
				month: 4
				day: 18
				hour: 23
				minute: 59).
