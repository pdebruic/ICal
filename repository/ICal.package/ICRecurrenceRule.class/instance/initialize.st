initialize-release
initialize
	super initialize.
	self seconds: OrderedCollection new.
	self minutes: OrderedCollection new.
	self hours: OrderedCollection new.
	self weekdays: OrderedCollection new.
	self monthdays: OrderedCollection new.	
	self yeardays: OrderedCollection new.
	self weeknumbers: OrderedCollection new.
	self monthnumbers: OrderedCollection new.
	self positions: OrderedCollection new.