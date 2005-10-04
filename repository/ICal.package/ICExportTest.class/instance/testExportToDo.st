tests
testExportToDo
	| export str |
	calendar removeEvent: appointment.
	calendar addEvent: toDo.
	
	export := iCalExporter export.
	str := 'BEGIN:VCALENDAR' , String crlf 
				, 'PRODID:-//SMALLWIKI2-Calendar v1.0//-' , String crlf 
				, 'VERSION:2.0' , String crlf 
				, 'METHOD:PUBLISH' , String crlf 
				, 'BEGIN:VTODO' , String crlf 
				, 'DUE;VALUE=DATE-TIME:20050425T120900Z' , String crlf
				, 'STATUS:COMPLETED' , String crlf 
				, 'COMPLETED:20050501T110231Z' , String crlf
				, 'DTSTAMP:20050501T110231Z' , String crlf 
				, 'CREATED:20050501T110231Z' , String crlf 
				, 'LAST-MODIFIED:20050501T110231Z' , String crlf 
				, 'UID:http://localhost:8080/seaside/smallwiki/Calendar/todo1' , String crlf 
				, 'SUMMARY:aTitle' , String crlf 
				, 'DESCRIPTION:a long long long text, very long... really!' , String crlf 
				, 'PRIORITY:1' , String crlf 
				, 'END:VTODO' , String crlf 
				, 'END:VCALENDAR' , String crlf.
	export dataStream contents 
		keysAndValuesDo: [:index :value |
			self assert: value = (str at: index) ].
	self assert: export dataStream contents = str