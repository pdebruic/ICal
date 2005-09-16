initialization
initialize
	super initialize.
	self dataStream: (WriteStream on: String new).