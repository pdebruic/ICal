private
eventsFor: aMonth
	| dates |
	
	dates := self byMonthDayFor: aMonth.
	dates := self intersect: (self byDayFor: aMonth) with: dates.
	self hasPositions
		ifTrue: [ | date |
			date := dates at: self position ifAbsent: [ nil ].
			dates := OrderedCollection new.
			date ifNotNil: [ dates add: date ].
		].
	
	^ dates sortBy: [:l :r| l < r ].