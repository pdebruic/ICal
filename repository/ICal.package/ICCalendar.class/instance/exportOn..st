exporting
exportOn: anExporter
	anExporter exportProductId: self productId.
	anExporter exportVersion: self version.
	anExporter exportMethod: self method.
	self componentsDo: [ :each |
		anExporter export: each ]