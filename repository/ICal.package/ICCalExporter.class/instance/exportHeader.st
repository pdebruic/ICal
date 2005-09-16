exporting
exportHeader
	self exportLine: 'BEGIN:VCALENDAR'.
	self exportLine: 'PRODID:-//SMALLWIKI2-Calendar v1.0//-'.
	self exportLine: 'VERSION:2.0'.
	self exportLine: 'METHOD:PUBLISH'.