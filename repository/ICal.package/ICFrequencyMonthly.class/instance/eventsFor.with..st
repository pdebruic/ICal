private
eventsFor: aDateAndTime with: aCollection
	| dates month events |
	
	month := aDateAndTime asMonth.
	dates := self intersect: (self byMonthDayFor: month) with: aCollection.
	dates := self intersect: (self byDayFor: month) with: dates.
	
	events := OrderedCollection new.

	dates do: [ :date |
		self hoursOrDefault do: [ :hour|
			self minutesOrDefault do: [ :minute |
				self secondsOrDefault do: [ :second|
					events add: (self dateAndTimeClass date: date time: (self timeClass hour: hour minute: minute second: second)).
				].
			].
		].
	].

	^ events sortBy: [:l :r| l < r ].