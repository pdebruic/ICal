testing
testMonthlyEventsAfter
	| rule jan may sep janSet maySet sepSet |
	
	rule := ICRecurrenceRule monthly addWeekday: 'SA';
		addMonthday: 7; addMonthday: 8; addMonthday: 9; addMonthday: 10; addMonthday: 11;
		addMonthday: 12; addMonthday: 13;
		dtstart: (self dateAndTimeClass year: 2006 month: 1 day: 1 hour: 8 minute: 0 second: 0); yourself.
	
	jan := self dateAndTimeClass year: 2006 month: 1 day: 1.
	may := self dateAndTimeClass year: 2006 month: 5 day: 1.
	sep := self dateAndTimeClass year: 2006 month: 9 day: 1.
	janSet := OrderedCollection new
		add: (self dateAndTimeClass year: 2006 month: 1 day: 7 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2006 month: 2 day: 11 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2006 month: 3 day: 11 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2006 month: 4 day: 8 hour: 8 minute: 0 second: 0);
		yourself.
	maySet := OrderedCollection new
		add: (self dateAndTimeClass year: 2006 month: 5 day: 13 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2006 month: 6 day: 10 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2006 month: 7 day: 8 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2006 month: 8 day: 12 hour: 8 minute: 0 second: 0);
		yourself.
	sepSet := OrderedCollection new
		add: (self dateAndTimeClass year: 2006 month: 9 day: 9 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2006 month: 10 day: 07 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2006 month: 11 day: 11 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2006 month: 12 day: 9 hour: 8 minute: 0 second: 0);
		yourself.
		
	self assert: (rule events: 4 after: jan) = janSet.
	self assert: (rule events: 4 after: may) = maySet.
	self assert: (rule events: 4 after: sep) = sepSet.