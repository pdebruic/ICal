testing
testMonthlyEventsAfter
	| rule jan may sep janSet maySet sepSet |
	
	rule := ICRecurrenceRule monthly addWeekday: 'SA';
		addMonthday: 7; addMonthday: 8; addMonthday: 9; addMonthday: 10; addMonthday: 11;
		addMonthday: 12; addMonthday: 13; yourself.
	
	jan := Month month: 1 year: 2006.
	may := Month month: 5 year: 2006.
	sep := Month month: 9 year: 2006.
	janSet := OrderedCollection new
		add: (self dateClass year: 2006 month: 01 day: 07);
		add: (self dateClass year: 2006 month: 02 day: 11);
		add: (self dateClass year: 2006 month: 03 day: 11);
		add: (self dateClass year: 2006 month: 04 day: 08);
		yourself.
	maySet := OrderedCollection new
		add: (self dateClass year: 2006 month: 05 day: 13);
		add: (self dateClass year: 2006 month: 06 day: 10);
		add: (self dateClass year: 2006 month: 07 day: 08);
		add: (self dateClass year: 2006 month: 08 day: 12);
		yourself.
	sepSet := OrderedCollection new
		add: (self dateClass year: 2006 month: 09 day: 09);
		add: (self dateClass year: 2006 month: 10 day: 07);
		add: (self dateClass year: 2006 month: 11 day: 11);
		add: (self dateClass year: 2006 month: 12 day: 09);
		yourself.
		
	self assert: (rule events: 4 after: jan) = janSet.
	self assert: (rule events: 4 after: may) = maySet.
	self assert: (rule events: 4 after: sep) = sepSet.