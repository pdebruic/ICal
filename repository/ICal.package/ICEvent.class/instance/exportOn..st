exporting
exportOn: anExpoter
	super exportOn: anExpoter.
	anExpoter exportEnd: self end.
	anExpoter exportTransparency:  self transparency.