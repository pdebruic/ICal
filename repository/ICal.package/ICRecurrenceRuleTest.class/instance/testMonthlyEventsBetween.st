testing
testMonthlyEventsBetween
	| rule jan sep feb janFebSet aug augSepSet |

	rule := ICRecurrenceRule monthly addWeekday: 'SA'; yourself.

	jan := Month month: 1 year: 2006.
	feb := Month month: 2 year: 2006.
	aug := self dateClass year: 2006 month: 8 day: 6.
	sep := self dateClass year: 2006 month: 9 day: 3.
	janFebSet := OrderedCollection new
		add: (self dateClass year: 2006 month: 01 day: 07);
		add: (self dateClass year: 2006 month: 01 day: 14);
		add: (self dateClass year: 2006 month: 01 day: 21);
		add: (self dateClass year: 2006 month: 01 day: 28);
		yourself.
	augSepSet := OrderedCollection new
		add: (self dateClass year: 2006 month: 08 day: 12);
		add: (self dateClass year: 2006 month: 08 day: 19);
		add: (self dateClass year: 2006 month: 08 day: 26);
		add: (self dateClass year: 2006 month: 09 day: 02);
		yourself.
		
	self assert: (rule eventsBetween: jan and: feb) = janFebSet.
	self assert: (rule eventsBetween: aug and: sep) = augSepSet.