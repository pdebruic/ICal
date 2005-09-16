initialization
setUp
	calendar := ICCalendar title: 'test'.
	appointment := (ICAppointment title: 'aTitle')
				calendar: calendar;
				place: 'Bern';
				text: 'a long long long text, very long... really!';
				startDateAndTime: (DateAndTime 
							year: 2005
							month: 4
							day: 25
							hour: 10
							minute: 45);
				endDateAndTime: (DateAndTime 
							year: 2005
							month: 4
							day: 25
							hour: 12
							minute: 9);
				tsModified: (TimeStamp 
							year: 2005
							month: 5
							day: 1
							hour: 11
							minute: 2
							second: 31);
				tsCreated: (TimeStamp 
							year: 2005
							month: 5
							day: 1
							hour: 11
							minute: 2
							second: 31);
				priority: 'high';
				status: 'tentative';
				type: 'Event';
				yourself.
	toDo := (ICToDo title: 'aTitle')
				calendar: calendar;
				text: 'a long long long text, very long... really!';
				tsDeadline: (DateAndTime 
							year: 2005
							month: 4
							day: 25
							hour: 12
							minute: 9);
				tsModified: (TimeStamp 
							year: 2005
							month: 5
							day: 1
							hour: 11
							minute: 2
							second: 31);
				tsCreated: (TimeStamp 
							year: 2005
							month: 5
							day: 1
							hour: 11
							minute: 2
							second: 31);
				tsCompleted: (TimeStamp 
							year: 2005
							month: 5
							day: 1
							hour: 11
							minute: 2
							second: 31);
				priority: 'high';
				status: 'completed';
				yourself.
	calendar addEvent: appointment.
	iCalExporter := ICCalExporter calendar: calendar