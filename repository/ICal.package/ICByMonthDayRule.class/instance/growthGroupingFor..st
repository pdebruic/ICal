growing
growthGroupingFor: aDateAndTime
	^ self dateAndTimeClass
		year: (self yearFor: aDateAndTime)
		month: (self monthFor: aDateAndTime)
		day: 1
		hour: 1
		minute: 1
		second: 1