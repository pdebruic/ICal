testing
testOccurences
	| event |
	
	event := (ICEvent summary: 'Test event')
		start: (TimeStamp year: 2006 month: 10 day: 1 hour: 19 minute: 0);
		end: (Time hour: 21 minute: 0 second: 0);
		location: 'Festgeminde';
		addRecurrenceRule: (ICRecurrenceRule monthly
			addWeekday: 'FR' occurrence:1; until: (Date year: 2006 month: 12 day: 28); yourself);
		yourself.
		
	self assert: (event occurrences = (OrderedCollection new add: (Date year: 2006 month: 10 day: 6);
		add: (Date year: 2006 month: 11 day: 3); add: (Date year: 2006 month: 12 day: 1); yourself)).
		
	event := (ICEvent summary: 'Test event')
		start: (TimeStamp year: 2006 month: 10 day: 18 hour: 19 minute: 0);
		end: (Time hour: 21 minute: 0 second: 0);
		location: 'Festgeminde';
		addRecurrenceRule: (ICRecurrenceRule monthly
			addWeekday: 'FR' occurrence:1; count: 4; yourself);
		yourself.
		
	self assert: (event occurrences = (OrderedCollection new
		add: (Date year: 2006 month: 11 day: 3); add: (Date year: 2006 month: 12 day: 1); 
		add: (Date year: 2007 month: 1 day: 5); add: (Date year: 2007 month: 2 day: 2); yourself)).
	
	event := (ICEvent summary: 'Test event')
		start: (TimeStamp year: 2006 month: 10 day: 1 hour: 19 minute: 0);
		end: (Time hour: 21 minute: 0 second: 0);
		location: 'Festgeminde';
		addRecurrenceRule: (ICRecurrenceRule monthly
			addWeekday: 'FR' occurrence:1; interval: 2; count: 2; yourself);
		yourself.
		
	self assert: (event occurrences = (OrderedCollection new add: (Date year: 2006 month: 10 day: 6);
		add: (Date year: 2006 month: 12 day: 1); yourself)).