testing
testExportDateEvent
	| export str |
	calendar addEvent: dateEvent.
	export := iCalExporter export.
	str := 'BEGIN:VCALENDAR' , String crlf 
				, 'PRODID:' , calendar productId , String crlf 
				, 'VERSION:2.0' , String crlf 
				, 'METHOD:PUBLISH' , String crlf
				, 'BEGIN:VEVENT' , String crlf 				
				, 'UID:' , dateEvent uid , String crlf 
				, 'CATEGORIES:category1,category2' , String crlf
				, 'CREATED:20050501T110231Z' , String crlf 
				, 'SEQUENCE:0' , String crlf
				, 'SUMMARY:aTitle' , String crlf 
				, 'PRIORITY:5' , String crlf 				
				, 'DTSTART;VALUE=DATE:20050425' , String crlf 
				, 'END:VEVENT' , String crlf 
				, 'END:VCALENDAR' , String crlf.
	export dataStream contents 
		keysAndValuesDo: [:index :value | self assert: value = (str at: index)].
	self assert: export dataStream contents = str