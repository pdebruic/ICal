exporting
exportHeader
	self exportLine: 'BEGIN:VCALENDAR'.
	self exportLine: 'PRODID:' , ICCalendar productId.
	self exportLine: 'VERSION:2.0'.
	self exportLine: 'METHOD:PUBLISH'.