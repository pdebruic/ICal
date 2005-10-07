running
setUp
	calendar := ICCalendar summary: 'test'.
	appointment := (ICEvent summary: 'aTitle')
				calendar: calendar;
				place: 'Bern';
				textualDescription: 'a long long long text, very long... really!';
				start: (DateAndTime 
							year: 2005
							month: 4
							day: 25
							hour: 10
							minute: 45);
				end: (DateAndTime 
							year: 2005
							month: 4
							day: 25
							hour: 12
							minute: 9);
				lastModified: (DateAndTime 
							year: 2005
							month: 5
							day: 1
							hour: 11
							minute: 2
							second: 31);
				created: (DateAndTime 
							year: 2005
							month: 5
							day: 1
							hour: 11
							minute: 2
							second: 31);
				beHighPriority;
				beTentative;
				yourself.
	toDo := (ICTodo summary: 'aTitle')
				calendar: calendar;
				textualDescription: 'a long long long text, very long... really!';
				due: (DateAndTime 
							year: 2005
							month: 4
							day: 25
							hour: 12
							minute: 9);
				lastModified: (DateAndTime 
							year: 2005
							month: 5
							day: 1
							hour: 11
							minute: 2
							second: 31);
				created: (DateAndTime 
							year: 2005
							month: 5
							day: 1
							hour: 11
							minute: 2
							second: 31);
				completed: (DateAndTime 
							year: 2005
							month: 5
							day: 1
							hour: 11
							minute: 2
							second: 31);
				beHighPriority;
				beCompleted;
				yourself.
	calendar addEvent: appointment.
	iCalExporter := ICCalExporter calendar: calendar