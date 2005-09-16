calculation
hours
	| diff |
	diff := self calendarEndTime - self calendarStartTime.
	^diff hours + (diff minutes / 60) asFloat.