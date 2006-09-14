exporting-values
exportRecurrenceRules: aCollection
	aCollection do: [ :each |
		self exportRecurrenceRule: each ]