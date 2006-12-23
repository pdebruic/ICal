accessing
recurrenceRules: aCollection
	aCollection do: [ :rule | rule dtstart: start ].
	super recurrenceRules: aCollection.