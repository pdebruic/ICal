private
clearAll
	|start|

	start := DateAndTime year: 2007 month: 3 day: 15 hour: 8 minute: 45 second: 0.
	secondly := ICFrequencySecondly new dtstart: start.
	minutely := ICFrequencyMinutely new dtstart: start.
	hourly := ICFrequencyHourly new dtstart: start.
	daily := ICFrequencyDaily new dtstart: start.
	weekly := ICFrequencyWeekly new dtstart: start.
	monthly := ICFrequencyMonthly new dtstart: start.
	yearly := ICFrequencyYearly new dtstart: start.