initialization
initialize
	super initialize.

	unknownFields := OrderedCollection new.
	alertCounter := 0.
	
	self text: String new.
	self tsModified: TimeStamp now.
	self tsCreated: TimeStamp now.
	self status: String new.
	self priority: 'normal'.
	self hasAlert: false.
	
	