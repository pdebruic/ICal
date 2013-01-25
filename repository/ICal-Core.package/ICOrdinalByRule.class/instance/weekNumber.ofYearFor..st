weeks
weekNumber: aWeekNumber ofYearFor: aDate
	| dt wks weekNum |
	weekNum := 1.
	dt := self startOfFirstWeekAccordingToRFC2445For: aDate.
	[ dt year <= aDate year ]
		whileTrue: [ 
			weekNum = aWeekNumber
				ifTrue: [ ^Timespan starting: dt duration: 7 days ].
			dt := dt + 7 days.
			weekNum := weekNum + 1 ]