exporting
exportOn: anExporter
	super exportOn: anExporter.
	anExporter exportAttachments: self attachments.
	anExporter exportCategories: self categories.
	anExporter exportClassification: self classification.
	anExporter exportCreated: self created.
	anExporter exportExclusionDates: self exclusionDates.
	anExporter exportExclusionRule: self exclusionRule.
	anExporter exportStatus: self status.
	anExporter exportRecurrenceDates: self recurrenceDates.
	anExporter exportRecurrenceRule: self recurrenceRule.
	anExporter exportLastModified: self lastModified.
	anExporter exportSequenceNumber: self sequenceNumber.
	anExporter exportSummary: self summary