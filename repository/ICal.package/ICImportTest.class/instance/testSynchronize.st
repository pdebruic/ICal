testing
testSynchronize
	| events tempEvent date |
	date := Date 
				year: 2005
				month: 6
				day: 14.
	self assert: calendar events size = 3.
	self assert: calendar todos size = 2.
	self assert: calendar appointments size = 1.
	importCommand synchronize.
	self assert: calendar events size = 3.
	self assert: calendar todos size = 1.
	self assert: calendar appointments size = 2.
	self assert: (calendar events includes: event).
	self assert: (calendar events includes: todo).
	self assert: (calendar appointments includes: event).
	self assert: (calendar todos includes: todo).
	self deny: (calendar todos includes: otherTodo).
	events := calendar eventsForDate: date.
	self assert: events size = 3.
	tempEvent := events detect: [:each | each summary = 'test1'].
	self assert: tempEvent isHighPriority.
	self assert: tempEvent place = 'Bern'.
	self assert: tempEvent isConfirmed.
	self assert: tempEvent textualDescription = 'blabla'.
	self assert: tempEvent categories anyOne 
				= (calendar categoryWithSummary: 'business').
	self 
		assert: tempEvent start = (DateAndTime date: date
						time: (Time 
								hour: 11
								minute: 0
								second: 0)).
	self 
		assert: tempEvent end = (DateAndTime date: date
						time: (Time 
								hour: 13
								minute: 0
								second: 0)).
	tempEvent := events detect: [:each | each summary = 'todo1'].
	self assert: tempEvent isMediumPriority.
	self assert: tempEvent isCompleted.
	self assert: tempEvent textualDescription = 'testest'.
	self assert: tempEvent categories anyOne 
				= (calendar categoryWithSummary: 'business').
	self 
		assert: tempEvent due = (DateAndTime date: date
						time: (Time 
								hour: 15
								minute: 0
								second: 0)).
	self 
		assert: tempEvent completed = (DateAndTime date: date
						time: (Time 
								hour: 11
								minute: 9
								second: 15))