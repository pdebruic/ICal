private
eventsStartingAt: aStartDateAndTime
	|needStart|
	
	needStart := true.
	
	^ (self yearsStartingAt: aStartDateAndTime year) collectAndFlatten: [:year|
		needStart ifTrue: [ needStart := aStartDateAndTime year = year ].
		(self monthsStartingAt: aStartDateAndTime month when: needStart) collectAndFlatten: [:month|
			needStart ifTrue: [ needStart := aStartDateAndTime month = month ].
			(self daysInMonth: month andYear: year startingAt: aStartDateAndTime when: needStart) collectAndFlatten: [:day|
				needStart ifTrue: [ needStart := aStartDateAndTime day = day ].
				(self hoursStartingAt: aStartDateAndTime hour when: needStart) collectAndFlatten: [:hour|
					needStart ifTrue: [ needStart := aStartDateAndTime hour = hour ].
					(self minutesStartingAt: aStartDateAndTime minute when: needStart) collectAndFlatten: [:minute|
						needStart ifTrue: [ needStart := aStartDateAndTime minute = minute ].
						(self secondsStartingAt: aStartDateAndTime second when: needStart) collect: [:second|
							DateAndTime year: year month: month day: day hour: hour minute: minute second: second
						]
					]
				]
			]
		]
	]