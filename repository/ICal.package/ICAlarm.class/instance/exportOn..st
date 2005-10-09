exporting
exportOn: anExporter
	anExporter exportAttachment: self attachment.
	anExporter exportDescription: self textualDescription.
	anExporter exportDuration: self duration