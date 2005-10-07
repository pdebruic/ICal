testing
testSynchronize

	| events event date |
	date := (Date year: 2005 month: 6 day: 14).
	
	self assert: calendar events size = 3.
	self assert: calendar todos size = 2.
	self assert: calendar appointments size = 1.
	importCommand synchronize.
	
	self assert: calendar events size = 3.
	self assert: calendar todos size = 1.
	self assert: calendar appointments size = 2.
	self assert: (calendar events includes: appointment).
	self assert: (calendar events includes: toDo).
	self assert: (calendar appointments includes: appointment).
	self assert: (calendar todos includes: toDo).	
	self deny: (calendar todos includes: otherToDo).
	
	events := calendar eventsForDate: date.
	self assert: events size = 3.
	
	event := events detect: [:each | each summary = 'test1'].
	self assert: event isHighPriority.
	self assert: event place = 'Bern'.
	self assert: event isConfirmed.
	self assert: event textualDescription = 'blabla'.
	self assert: event categories anyOne = (calendar categoryWithSummary: 'business').
	self assert: event start = (DateAndTime date: date time: (Time hour: 11 minute: 0 second: 0)).
	self assert: event end = (DateAndTime date: date time: (Time hour: 13 minute: 0 second: 0)).
	
	event := events detect: [:each | each summary = 'todo1'].
	self assert: event isToDo.
	self assert: event isMediumPriority.
	self assert: event isCompleted.
	self assert: event textualDescription = 'testest'.
	self assert: event categories anyOne = (calendar categoryWithSummary: 'business').
	self assert: event due = (DateAndTime date: date time: (Time hour: 15 minute: 0 second: 0)).
	self assert: event completed = (DateAndTime date: date time: (Time hour: 11 minute: 9 second: 15)).