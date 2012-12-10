weeks
startOfFirstWeekAccordingToRFC2445For: aDate
	| year weekStartIndex midWeekDay |
	weekStartIndex := self dayLetterCodes indexOf: self weekStart.
	midWeekDay := self dayLetterCodes atWrap: weekStartIndex + 3.
	year := aDate itsYear.
	year
		datesDo: [ :each | 
			midWeekDay = (self dayLetterCodeFor: each)
				ifTrue: [ ^ each start - 3 days ] ]