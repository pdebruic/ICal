testing-events
testEventsForTimeStamp	
	"self debug: #testEventsForTimeStamp"
	self 
		assert: (calendar 
				eventsForDateAndTime: (DateAndTime 
						year: 2005
						month: 5
						day: 20
						hour: 19
						minute: 0)) 
					size = 1.
	calendar removeEvent: event1.
	self 
		assert: (calendar 
				eventsForDateAndTime: (DateAndTime 
						year: 2005
						month: 5
						day: 20
						hour: 19
						minute: 0)) 
					isEmpty.
	self 
		assert: (calendar 
				todosForDateAndTime: (DateAndTime 
						year: 2005
						month: 7
						day: 30
						hour: 22
						minute: 0)) 
					size = 1.
	calendar removeTodo: todo.
	self 
		assert: (calendar 
				todosForDateAndTime: (DateAndTime 
						year: 2005
						month: 7
						day: 30
						hour: 22
						minute: 0)) 
					isEmpty