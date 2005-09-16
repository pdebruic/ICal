configuration
setUp
	calendar := ICCalendar title: 'test'.
	appointment := ICAppointment title: 'aTitle'.
	appointment calendar: calendar.
	appointment place: 'Bern'.
	appointment text: 'description'.
	appointment type: 'Event'.
	appointment category: (ICCategory defaultCategories first).
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
	serie := ICEventSerie title: 'aSerie'.
	serie calendar: calendar.
	serie addEvent: appointment.
	serie addEvent: ((ICAppointment title: 'title2')
				calendar: calendar;
				place: 'Honolulu';
				text: 'aText';
				type: 'event';
				startDateAndTime: (DateAndTime 
							year: 2005
							month: 4
							day: 18
							hour: 17
							minute: 0);
				endDateAndTime: (DateAndTime 
							year: 2005
							month: 4
							day: 18
							hour: 18
							minute: 0);
				yourself)