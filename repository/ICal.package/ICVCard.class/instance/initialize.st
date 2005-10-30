initialize-release
initialize
	super initialize.
	self addresses: OrderedCollection new.
	self phoneNumbers: OrderedCollection new.
	self emailAddresses: OrderedCollection new