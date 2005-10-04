configuration
setUp
	| importString |
	calendar := ICCalendar title: 'test'.
	appointment := (ICEvent title: 'aTitle')
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
							month: 4
							day: 25
							hour: 10
							minute: 45);
				tsCreated: (TimeStamp 
							year: 2005
							month: 4
							day: 25
							hour: 12
							minute: 9);
				priority: ICJob highPriority;
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
				priority: ICJob highPriority;
				status: 'completed';
				yourself.
	otherToDo := toDo copy.
	otherToDo title: 'anotherToDo'.
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