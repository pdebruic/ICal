testing
testMonthlyEventsBetween
	| rule jan sep feb janFebSet aug augSepSet |

	rule := ICRecurrenceRule monthly addWeekday: 'SA';
		dtstart: (self dateAndTimeClass year: 2006 month: 1 day: 1 hour: 8 minute: 0 second: 0); yourself.

	jan := self dateAndTimeClass year: 2006 month: 1 day: 1.
	feb := self dateAndTimeClass year: 2006  month: 2 day: 1.
	aug := self dateAndTimeClass year: 2006 month: 8 day: 6.
	sep := self dateAndTimeClass year: 2006 month: 9 day: 3.
	janFebSet := OrderedCollection new
		add: (self dateAndTimeClass year: 2006 month: 1 day: 7 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2006 month: 1 day: 14 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2006 month: 1 day: 21 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2006 month: 1 day: 28 hour: 8 minute: 0 second: 0);
		yourself.
	augSepSet := OrderedCollection new
		add: (self dateAndTimeClass year: 2006 month: 8 day: 12 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2006 month: 8 day: 19 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2006 month: 8 day: 26 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2006 month: 9 day: 02 hour: 8 minute: 0 second: 0);
		yourself.
		
	self assert: (rule eventsBetween: jan and: feb) = janFebSet.
	self assert: (rule eventsBetween: aug and: sep) = augSepSet.