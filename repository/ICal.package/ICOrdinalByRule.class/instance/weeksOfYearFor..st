weeks
weeksOfYearFor: aDate
	| dt wks |
	wks := OrderedCollection new.
	dt := self startOfFirstWeekAccordingToRFC2445For: aDate.
	[ dt year <= aDate year ]
		whileTrue: [ 
			wks add: (Timespan starting: dt duration: 7 days).
			dt := dt + 7 days ].
	^ wks