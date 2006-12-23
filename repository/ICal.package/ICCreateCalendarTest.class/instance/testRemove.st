testing
testRemove
	"| context calendar removeCommand root |
	self addCalendarWithTitle: 'testCalendar'.
	self calendarTestWithTitle: 'testCalendar'.
	calendar := calendars last.
	
	context := SW2Context kernel: SW2Kernel new structure: calendar.  
  	removeCommand := SWCRemoveCalendar context: context.
  	removeCommand execute.	
		
	root := SW2Kernel instances first root.	
	self assert: (root children children at: 'testCalendar' ifAbsent: [nil]) isNil."
	 
			
	