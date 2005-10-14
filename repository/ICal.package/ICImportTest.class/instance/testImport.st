testing
testImport
	| events eventAtDate date |
	date := Date 
				year: 2005
				month: 6
				day: 14.
	self assert: calendar components size = 3.
	self assert: calendar events size = 1.
	self assert: calendar todos size = 2.
	importCommand import.
	self assert: calendar components size = 6.
	self assert: calendar todos size = 3.
	self assert: calendar events size = 3.
	self assert: (calendar events includes: event).
	self assert: (calendar todos includes: todo).
	self assert: (calendar components includes: event).
	self assert: (calendar components includes: todo).
	events := calendar eventsForDate: date.
	self assert: events size = 3.
	eventAtDate := events detect: [:each | each summary = 'test1'].
	self assert: eventAtDate isHighPriority.
	self assert: eventAtDate location = 'Bern'.
	self assert: eventAtDate isConfirmed.
	self assert: eventAtDate textualDescription = 'blabla'.
	self assert: eventAtDate categories anyOne 
				= (calendar categoryWithSummary: 'business').
	self 
		assert: eventAtDate start = (DateAndTime date: date
						time: (Time 
								hour: 11
								minute: 0
								second: 0)).
	self 
		assert: eventAtDate end = (DateAndTime date: date
						time: (Time 
								hour: 13
								minute: 0
								second: 0)).
	eventAtDate := events detect: [:each | each summary = 'todo1'].
	self assert: eventAtDate isHighPriority.
	self assert: eventAtDate isCompleted.
	self assert: eventAtDate textualDescription = 'testest'.
	self assert: eventAtDate categories anyOne 
				= (calendar categoryWithSummary: 'business').
	self 
		assert: eventAtDate due = (DateAndTime date: date
						time: (Time 
								hour: 15
								minute: 0
								second: 0)).
	self 
		assert: eventAtDate completed = (DateAndTime date: date
						time: (Time 
								hour: 11
								minute: 9
								second: 15))