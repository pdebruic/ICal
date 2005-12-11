exporting
export
	self dataStream reset.
	self lineStream reset.
	self cards do: [ :each |
		self export: each ].
	self save