running
setUp
	calendar := ICCalendar summary: 'test'.
	event := (ICEvent summary: 'aTitle')
				location: 'Bern';
				uid: 'a short but globally unique id';
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
				beOpaque;
				yourself.
	todo := (ICTodo summary: 'aTitle')
				textualDescription: 'a long long long text, very long... really!';
				uid: 'a very special value';
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
	dateEvent := (ICEvent summary: 'aTitle')
				uid: 'an event with a start date and not date and time';
				start: (Date
							year: 2005
							month: 4
							day: 25);
				created: (DateAndTime 
							year: 2005
							month: 5
							day: 1
							hour: 11
							minute: 2
							second: 31);
				addCategory: 'category1';
				addCategory: (ICCategory fromICalString: 'category2');
				yourself.
	journal := (ICJournal summary: 'aTitle')
				uid: 'jornal1';
				created: (DateAndTime 
							year: 2005
							month: 5
							day: 1
							hour: 11
							minute: 2
							second: 31);
				addTextualDescription: 'description1';
				addTextualDescription: 'description2';
				yourself.
	iCalExporter := ICCalendarExporter calendar: calendar