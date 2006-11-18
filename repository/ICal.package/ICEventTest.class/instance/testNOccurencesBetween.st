testing
testNOccurencesBetween
	| event sept apr |
	
	sept := self dateClass year: 2006 month: 9 day: 1.
	apr := self dateClass year: 2007 month: 4 day: 1.
	
	event := (ICEvent summary: 'Test event')
		start: (self dateAndTimeClass year: 2006 month: 10 day: 18 hour: 19 minute: 0 second: 0);
		end: (self timeClass hour: 21 minute: 0 second: 0);
		location: 'Test loc';
		addRecurrenceRule: (ICRecurrenceRule monthly
			addWeekday: 'FR' occurrence:1; until: (self dateClass year: 2007 month: 12 day: 28); yourself);
		yourself.
		
	self assert: (self compare: (event occurrences: 1 between: sept and: apr) with: (OrderedCollection new
		add: (self occurrenceFromYear: 2006 month: 11 day: 3 on: event); yourself)).
		
	event := (ICEvent summary: 'Test event')
		start: (self dateAndTimeClass year: 2006 month: 10 day: 18 hour: 19 minute: 0);
		end: (self timeClass hour: 21 minute: 0 second: 0);
		location: 'Test loc';
		addRecurrenceRule: (ICRecurrenceRule monthly
			addWeekday: 'FR' occurrence:1; count: 7; yourself);
		yourself.
		
	self assert: (self compare: (event occurrences: 4 between: sept and: apr) with: (OrderedCollection new
		add: (self occurrenceFromYear: 2006 month: 11 day: 3 on: event);
		add: (self occurrenceFromYear: 2006 month: 12 day: 1 on: event);
		add: (self occurrenceFromYear: 2007 month: 1 day: 5 on: event);
		add: (self occurrenceFromYear: 2007 month: 2 day: 2 on: event);
		yourself)).
	
	event := (ICEvent summary: 'Test event')
		start: (self dateAndTimeClass year: 2006 month: 10 day: 1 hour: 19 minute: 0);
		end: (self timeClass hour: 21 minute: 0 second: 0);
		location: 'Test loc';
		addRecurrenceRule: (ICRecurrenceRule monthly
			addWeekday: 'FR' occurrence:1; interval: 2; yourself);
		yourself.
		
	self assert: (self compare: (event occurrences: 2 between: sept and: apr) with: (OrderedCollection new
		add: (self occurrenceFromYear: 2006 month: 10 day: 6 on: event);
		add: (self occurrenceFromYear: 2006 month: 12 day: 1 on: event); yourself)).