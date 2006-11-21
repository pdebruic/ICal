accessing
eventsFor: aDateAndTime with: aCollection
	| dates events |
	
	^ self.  	"TODO:  Not finished"
	
	"self useDefaultDate
		ifTrue: [ dates add: (Date year: aDateAndTime year month: aDateAndTime day: dtstart dayOfMonth) ]
		ifFalse: [ dates := self intersect: (self byDayFor: aDateAndTime) with: aCollection. ].
	
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

	^ events sortBy: [:l :r| l < r ]."