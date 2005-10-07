running
setUp
	| importString |
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
							month: 4
							day: 25
							hour: 10
							minute: 45);
				created: (DateAndTime 
							year: 2005
							month: 4
							day: 25
							hour: 12
							minute: 9);
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
	otherToDo := toDo copy.
	otherToDo summary: 'anotherToDo'.
	calendar addEvent: appointment.
	calendar addEvent: toDo.
	calendar addEvent: otherToDo.
	parser := ICCalendarParser new calendar: calendar.
	importString := 'BEGIN:VCALENDAR
PRODID:-//SMALLWIKI2-Calendar v1.0//-
VERSION:2.0
METHOD:PUBLISH
BEGIN:VEVENT
DTSTART:20050614T110000Z
DTEND:20050614T130000Z
DTSTAMP:20050614T110853Z
CREATED:20050614T110853Z
LAST-MODIFIED:20050614T110853Z
UID:http://localhost:8080/seaside/smallwiki/Calendar/app1
SUMMARY:test1
DESCRIPTION:blabla
CATEGORIES:business
PRIORITY:1
STATUS:CONFIRMED
LOCATION:Bern
TRANSP:OPAQUE
END:VEVENT
BEGIN:VEVENT
DTSTART:20050614T160000Z
DTEND:20050614T190000Z
DTSTAMP:20050614T110951Z
CREATED:20050614T110951Z
LAST-MODIFIED:20050614T110951Z
UID:http://localhost:8080/seaside/smallwiki/Calendar/app2
SUMMARY:test2
DESCRIPTION:erzttz
CATEGORIES:business
PRIORITY:9
STATUS:CANCELLED
LOCATION:Bern
TRANSP:OPAQUE
END:VEVENT
BEGIN:VTODO
DUE;VALUE=DATE-TIME:20050614T150000Z
STATUS:COMPLETED
COMPLETED:20050614T110915Z
DTSTAMP:20050614T110915Z
CREATED:20050614T110915Z
LAST-MODIFIED:20050614T110915Z
UID:http://localhost:8080/seaside/smallwiki/Calendar/todo1
SUMMARY:todo1
DESCRIPTION:testest
CATEGORIES:business
PRIORITY:5
END:VTODO
END:VCALENDAR
'.
	importCommand := (ICImporter new)
				calendar: calendar;
				fileContent: importString;
				yourself