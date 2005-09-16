tests
testExportEvent
	| export str |
	export := iCalExporter export.
	str := 'BEGIN:VCALENDAR' , String crlf 
				, 'PRODID:-//SMALLWIKI2-Calendar v1.0//-' , String crlf 
				, 'VERSION:2.0' , String crlf 
				, 'METHOD:PUBLISH' , String crlf 
				, 'BEGIN:VEVENT' , String crlf 
				, 'DTSTART:20050425T104500Z' , String crlf 
				, 'DTEND:20050425T120900Z' , String crlf 
				, 'DTSTAMP:20050501T110231Z' , String crlf 
				, 'CREATED:20050501T110231Z' , String crlf 
				, 'LAST-MODIFIED:20050501T110231Z' , String crlf 
				, 'UID:http://localhost:8080/seaside/smallwiki/Calendar/app1' , String crlf 
				, 'SUMMARY:aTitle' , String crlf 
				, 'DESCRIPTION:a long long long text, very long... really!' , String crlf 
				, 'PRIORITY:1' , String crlf 
				, 'STATUS:TENTATIVE' , String crlf 
				, 'LOCATION:Bern' , String crlf 
				, 'TRANSP:OPAQUE' , String crlf 
				, 'END:VEVENT' , String crlf 
				, 'END:VCALENDAR' , String crlf.
	export dataStream contents 
		keysAndValuesDo: [:index :value | value = (str at: index) ifFalse: [self error: 'bug']].
	self assert: export dataStream contents = str