enumerating
recurrenceDatesBetween: aStart and: anEnd
	| dates |
	dates := self event recurrenceDates copy.
	dates addAll: (self recurrenceSchedules gather: [ :each | each datesBetween: aStart and: anEnd ]).
	^ dates asSet