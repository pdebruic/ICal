testing
testMonthlyEventsBetween
	| rule jan sep feb janFebSet aug augSepSet |

	rule := ICRecurrenceRule monthly addWeekday: 'SA'; yourself.

	jan := Month month: 1 year: 2006.
	feb := Month month: 2 year: 2006.
	aug := Date year: 2006 month: 8 day: 6.
	sep := Date year: 2006 month: 9 day: 3.
	janFebSet := OrderedCollection new
		add: (Date fromString: '01.07.2006');
		add: (Date fromString: '01.14.2006');
		add: (Date fromString: '01.21.2006');
		add: (Date fromString: '01.28.2006');
		yourself.
	augSepSet := OrderedCollection new
		add: (Date fromString: '08.12.2006');
		add: (Date fromString: '08.19.2006');
		add: (Date fromString: '08.26.2006');
		add: (Date fromString: '09.02.2006');
		yourself.
		
	self assert: (rule eventsBetween: jan and: feb) = janFebSet.
	self assert: (rule eventsBetween: aug and: sep) = augSepSet.