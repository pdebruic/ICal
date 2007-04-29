testing
testHasDates

	self should: (secondly hasDates not
		and: [ minutely hasDates not
		and: [ hourly hasDates not
		and: [ daily hasDates not ] ] ]).

	secondly yeardays: #(300).
	minutely monthdays: #(15).
	hourly weekdays: #('FR').
	daily daysAndOccurrences: #(2 -> 'FR').

	self should: (secondly hasDates
		and: [ minutely hasDates
		and: [ hourly hasDates
		and: [ daily hasDates ] ] ]).