tests
testImport

	| events event date |
	date := (Date year: 2005 month: 6 day: 14).
	
	self assert: calendar events size = 3.
	self assert: calendar toDos size = 2.
	self assert: calendar appointments size = 1.
	importCommand import.
	
	self assert: calendar events size = 6.
	self assert: calendar toDos size = 3.
	self assert: calendar appointments size = 3.
	self assert: (calendar events includes: appointment).
	self assert: (calendar events includes: toDo).
	self assert: (calendar appointments includes: appointment).
	self assert: (calendar toDos includes: toDo).
	
	events := calendar eventsForDate: date.
	self assert: events size = 3.
	
	event := events detect: [:each | each title = 'test1'].
	self assert: event isAppointment.
	self assert: event priority = ICJob highPriority.
	self assert: event place = 'Bern'.
	self assert: event status = 'confirmed'.
	self assert: event text = 'blabla'.
	self assert: event category = (calendar categoryWithTitle: 'business').
	self assert: event startDateAndTime = (DateAndTime date: date time: (Time hour: 11 minute: 0 second: 0)).
	self assert: event endDateAndTime = (DateAndTime date: date time: (Time hour: 13 minute: 0 second: 0)).
	
	event := events detect: [:each | each title = 'todo1'].
	self assert: event isToDo.
	self assert: event priority = ICJob mediumPriority.
	self assert: event status = 'completed'.
	self assert: event isCompleted.
	self assert: event text = 'testest'.
	self assert: event category = (calendar categoryWithTitle: 'business').
	self assert: event tsDeadline = (DateAndTime date: date time: (Time hour: 15 minute: 0 second: 0)).
	self assert: event tsCompleted = (DateAndTime date: date time: (Time hour: 11 minute: 9 second: 15)).