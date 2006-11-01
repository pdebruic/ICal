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
		add: (Date fromString: '01.07.2006');
		add: (Date fromString: '02.11.2006');
		add: (Date fromString: '03.11.2006');
		add: (Date fromString: '04.08.2006');
		yourself.
	maySet := OrderedCollection new
		add: (Date fromString: '05.13.2006');
		add: (Date fromString: '06.10.2006');
		add: (Date fromString: '07.08.2006');
		add: (Date fromString: '08.12.2006');
		yourself.
	sepSet := OrderedCollection new
		add: (Date fromString: '09.09.2006');
		add: (Date fromString: '10.07.2006');
		add: (Date fromString: '11.11.2006');
		add: (Date fromString: '12.09.2006');
		yourself.
		
	self assert: (rule events: 4 after: jan) = janSet.
	self assert: (rule events: 4 after: may) = maySet.
	self assert: (rule events: 4 after: sep) = sepSet.