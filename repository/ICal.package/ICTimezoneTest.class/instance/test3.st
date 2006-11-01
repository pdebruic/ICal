testing
test3
	| timezone standardTime recurrenceRule name daylightSavingTime |
	timezone := self parse: #sample3.
	self assert: timezone id = 'US--Fictitious-Eastern'.
	self assert: timezone lastModified = (Date newDay: 01 month: 01 year: 1987).
	
	self assert: timezone standardTimes size = 1.
	standardTime := timezone standardTimes first.
	self assert: standardTime start = (DateAndTime year: 1967 month: 10 day: 29 hour: 2 minute: 0).
	self assert: standardTime recurrenceRules size = 1.
	recurrenceRule := standardTime recurrenceRules first.
	self assert: recurrenceRule frequency asICalString = 'YEARLY'.
	self assert: recurrenceRule weekdays = (Set with: 'SU' -> -1).
	self assert: recurrenceRule monthnumbers = (Set with: 10).
	self assert: standardTime offsetFrom = (ICUtcOffset new positive: false; hours: 4; minutes: 0; seconds: 0; yourself).
	self assert: standardTime offsetTo = (ICUtcOffset new positive: false; hours: 5; minutes: 0; seconds: 0; yourself).
	self assert: standardTime names size = 1.
	name := standardTime names first.
	self assert: name text = 'EST'.
	
	self assert: timezone daylightSavingTimes size = 1.
	daylightSavingTime := timezone daylightSavingTimes first.
	self assert: daylightSavingTime start = (DateAndTime year: 1987 month: 04 day: 05 hour: 2 minute: 0).
	self assert: daylightSavingTime recurrenceRules size = 1.
	recurrenceRule := daylightSavingTime recurrenceRules first.
	self assert: recurrenceRule frequency asICalString = 'YEARLY'.
	self assert: recurrenceRule weekdays = (Set with: 'SU' -> 1).
	self assert: recurrenceRule monthnumbers = (Set with: 4).
	self assert: recurrenceRule repetition = (DateAndTime year: 1998 month: 04 day: 04 hour: 7 minute: 0).
	self assert: daylightSavingTime offsetFrom = (ICUtcOffset new positive: false; hours: 5; minutes: 0; seconds: 0; yourself).
	self assert: daylightSavingTime offsetTo = (ICUtcOffset new positive: false; hours: 4; minutes: 0; seconds: 0; yourself).
	self assert: daylightSavingTime names size = 1.
	name := daylightSavingTime names first.
	self assert: name text = 'EDT'.