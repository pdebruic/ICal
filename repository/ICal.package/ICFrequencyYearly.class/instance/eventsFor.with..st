accessing
eventsFor: aDateAndTime with: aCollection
	| dates events |
	
	dates := self intersect: (self byWeeknoFor: aDateAndTime) with: aCollection.
	dates := self intersect: (self byYearDayFor: aDateAndTime) with: dates.		
	
	self monthsOrDefault do: [:month|
		self useDefaultDate
			ifTrue: [ dates add: (Date year: aDateAndTime year month: month day: dtstart dayOfMonth) ]
			ifFalse: [
				month := Month month: month year: aDateAndTime year.
				dates := self intersect: (self byMonthDayFor: month) with: dates.
				dates := self intersect: (self byDayFor: month) with: dates.
			]
	].
	
	events := OrderedCollection new.

	dates do: [ :date |
		self hoursOrDefault do: [ :hour|
			self minutesOrDefault do: [ :minute |
				self secondsOrDefault do: [ :second|
					events add: (DateAndTime date: date time: (Time hour: hour minute: minute second: second)).
				].
			].
		].
	].

	^ events sortBy: [:l :r| l < r ].