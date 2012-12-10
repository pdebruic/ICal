as yet unclassified
testDayOfWeek
	"date is a Saturday"

	byRule
		weekStart: 'MO';
		weekly: true.
	self assert: (byRule dayOfWeekFor: date) equals: 6.
	byRule
		weekStart: 'TU';
		weekly: true.
	self assert: (byRule dayOfWeekFor: date) equals: 5.
	byRule
		weekStart: 'WE';
		weekly: true.
	self assert: (byRule dayOfWeekFor: date) equals: 4.
	byRule
		weekStart: 'TH';
		weekly: true.
	self assert: (byRule dayOfWeekFor: date) equals: 3.
	byRule
		weekStart: 'FR';
		weekly: true.
	self assert: (byRule dayOfWeekFor: date) equals: 2.
	byRule
		weekStart: 'SA';
		weekly: true.
	self assert: (byRule dayOfWeekFor: date) equals: 1.
	byRule
		weekStart: 'SU';
		weekly: true.
	self assert: (byRule dayOfWeekFor: date) equals: 7