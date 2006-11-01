initialize-release
initialize

	super initialize.
	self interval: 1.
	self seconds: Set new.
	self minutes: Set new.
	self hours: Set new.
	self weekdays: Set new.
	self monthdays: Set new.	
	self yeardays: Set new.
	self weeknumbers: Set new.
	self monthnumbers: Set new.
	self positions: Set new.