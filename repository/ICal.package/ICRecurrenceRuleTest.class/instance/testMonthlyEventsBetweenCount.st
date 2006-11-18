testing
testMonthlyEventsBetweenCount
	| rule sep aug augSepSet augSepCountSet janSepYearSet janDecYearSet jan dec janDecYearWithMonthSet |

	rule := ICRecurrenceRule monthly addWeekday: 'SA';
		dtstart: (self dateAndTimeClass year: 2006 month: 1 day: 1 hour: 8 minute: 0 second: 0); yourself.

	jan := self dateAndTimeClass year: 2006 month: 1 day: 1 hour: 0 minute: 0 second: 0.
	dec := self dateClass year: 2006 month: 12 day: 30.
	aug := self dateClass year: 2006 month: 8 day: 6.
	sep := self dateClass year: 2006 month: 9 day: 3.
	augSepSet := OrderedCollection new
		add: (self dateAndTimeClass year: 2006 month: 8 day: 12 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2006 month: 8 day: 19 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2006 month: 8 day: 26 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2006 month: 9 day: 2 hour: 8 minute: 0 second: 0);
		yourself.
		
	augSepCountSet := OrderedCollection new
		add: (self dateAndTimeClass year: 2006 month: 8 day: 12 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2006 month: 8 day: 19 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2006 month: 8 day: 26 hour: 8 minute: 0 second: 0);
		yourself.

	janSepYearSet := OrderedCollection new
		add: (self dateAndTimeClass year: 2006 month: 1 day: 1 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2006 month: 2 day: 4 hour: 8 minute: 0 second: 0);
		yourself.

	janDecYearSet := OrderedCollection new
		add: (self dateAndTimeClass year: 2006 month: 1 day: 1 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2006 month: 2 day: 4 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2006 month: 12 day: 11 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2006 month: 12 day: 12 hour: 8 minute: 0 second: 0);
		yourself.
		
	janDecYearWithMonthSet := OrderedCollection new
		add: (self dateAndTimeClass year: 2006 month: 12 day: 11 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2006 month: 12 day: 12 hour: 8 minute: 0 second: 0);
		yourself.

	self assert: (rule events: 5 between: aug and: sep) = augSepSet.
	self assert: (rule events: 10 between: aug and: sep) = augSepSet.
	self assert: (rule events: 3 between: aug and: sep) = augSepCountSet.
	
	rule := ICRecurrenceRule monthly addYearday: 345; addYearday: -20; addYearday: 35; addYearday: -365;
		dtstart: (self dateAndTimeClass year: 2006 month: 1 day: 1 hour: 8 minute: 0 second: 0); yourself.

	self assert: (rule events: 5 between: jan and: sep) = janSepYearSet.
	self assert: (rule events: 5 between: jan and: dec) = janDecYearSet.
	
	rule := ICRecurrenceRule monthly addYearday: 345; addYearday: -20; addYearday: 35; addYearday: -365; addMonthnumber: 12;
		dtstart: (self dateAndTimeClass year: 2006 month: 1 day: 1 hour: 8 minute: 0 second: 0); yourself.

	self assert: (rule events: 5 between: jan and: dec) = janDecYearWithMonthSet.