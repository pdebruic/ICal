private
eventsStartingAt: aStartTimeSpan untilFalse: aBooleanBlock
	| month dates |
	
	month := aStartTimeSpan asMonth.
	dates := self dates: (self eventsFor: month) after: aStartTimeSpan.
	
	[ aBooleanBlock value: dates ] whileTrue: [
			month := (month asDate addMonths: interval) asMonth.
			dates addAll: (self eventsFor: month).
	].

	^ dates.