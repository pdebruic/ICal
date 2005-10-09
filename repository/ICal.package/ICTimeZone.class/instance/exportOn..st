exporting
exportOn: anExporter
	anExporter exportStart: self start.
	anExporter exportRecurrenceRule: self recurrenceRule.
	anExporter exportRecurrenceDates: self recurrenceDates.
	anExporter exportLastModified: self lastModified 