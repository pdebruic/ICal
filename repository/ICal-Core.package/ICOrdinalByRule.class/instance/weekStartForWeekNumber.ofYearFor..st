weeks
weekStartForWeekNumber: aWeekNumber ofYearFor: aDate
	| dt wks weekNum |
	weekNum := 1.
	dt := self startOfFirstWeekAccordingToRFC2445For: aDate.
	[ dt year <= aDate year ]
		whileTrue: [ 
			weekNum = aWeekNumber
				ifTrue: [ ^ dt ].
			dt := dt + 7 days.
			weekNum := weekNum + 1 ]