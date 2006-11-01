testing
testMonthlyEventsBetweenCount
	| rule sep aug augSepSet augSepCountSet |

	rule := ICRecurrenceRule monthly addWeekday: 'SA'; yourself.

	aug := Date year: 2006 month: 8 day: 6.
	sep := Date year: 2006 month: 9 day: 3.
	augSepSet := OrderedCollection new
		add: (Date fromString: '08.12.2006');
		add: (Date fromString: '08.19.2006');
		add: (Date fromString: '08.26.2006');
		add: (Date fromString: '09.02.2006');
		yourself.
		
	augSepCountSet := OrderedCollection new
		add: (Date fromString: '08.12.2006');
		add: (Date fromString: '08.19.2006');
		add: (Date fromString: '08.26.2006');
		yourself.

	self assert: (rule events: 5 between: aug and: sep) = augSepSet.
	self assert: (rule events: 10 between: aug and: sep) = augSepSet.
	self assert: (rule events: 3 between: aug and: sep) = augSepCountSet.