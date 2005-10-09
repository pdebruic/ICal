exporting
exportOn: anExporter
	super exportOn: anExporter.
	anExporter exportPriority: self priority.
	anExporter exportDescription: self textualDescription.	
	anExporter exportGeo: (self geo ifNotNil: [ self geo asArray ]).
	anExporter exportLocation: self location.
	anExporter exportResources: self resources.
	anExporter exportStart: self start.
	anExporter exportDuration: self duration 