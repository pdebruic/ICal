initialize-release
initialize

	super initialize.
	self interval: 1.
	self weekStartday: 'MO'.
	self seconds: Set new.
	self minutes: Set new.
	self hours: Set new.
	self weekdays: Set new.
	self daysAndOccurrences: Set new.
	self monthdays: Set new.	
	self yeardays: Set new.
	weeknumbers := Set new.         "This is a little ugly.  Should probably change the rest to not use self"
	self monthnumbers: Set new.
	self positions: Set new.