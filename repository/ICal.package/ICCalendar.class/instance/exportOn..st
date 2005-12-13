exporting
exportOn: anExporter
	anExporter exportProductId: self productId.
	anExporter exportVersion: self version.
	anExporter exportMethod: self method.
	anExporter exportCharset: self charset.
	self componentsDo: [ :each |
		anExporter export: each ]