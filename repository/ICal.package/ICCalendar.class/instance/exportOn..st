exporting
exportOn: anExporter
	anExporter exportProductId: self productId.
	anExporter exportVersion: self version.
	self flag: #todo. "export method"
	self componentsDo: [ :each |
		anExporter export: each ]