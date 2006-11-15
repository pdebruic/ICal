accessing
start: aDateAndTime
	self recurrenceRules do: [ :rule | rule dtstart: aDateAndTime ].
	start := aDateAndTime