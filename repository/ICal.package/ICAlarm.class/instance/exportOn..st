exporting
exportOn: anExporter
	anExporter exportAttachments: self attachments.
	anExporter exportDescription: self textualDescription.
	anExporter exportDuration: self duration