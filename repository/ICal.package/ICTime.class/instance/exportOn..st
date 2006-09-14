exporting
exportOn: anExporter
	anExporter exportStart: self start.
	anExporter exportOffsetTo: self offsetTo.
	anExporter exportOffsetFrom: self offsetFrom.
	anExporter exportComments: self comments.
	anExporter exportRecurrenceRules: self recurrenceRules.
	anExporter exportRecurrenceDates: self recurrenceDates.
	anExporter exportTimezoneNames: self names.