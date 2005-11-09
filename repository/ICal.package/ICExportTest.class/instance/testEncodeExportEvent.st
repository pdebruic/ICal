testing
testEncodeExportEvent
	| export str imported |
	calendar addEvent: event.
	iCalExporter := ICEncodingCalendarExporter iso88591Calendar: calendar.
	export := iCalExporter export.
	str := 'BEGIN;ENCODING=ISO-8859-1:VCALENDAR' , String crlf 
				, 'PRODID;ENCODING=ISO-8859-1:' , calendar productId , String crlf 
				, 'VERSION:2.0' , String crlf 
				, 'METHOD;ENCODING=ISO-8859-1:PUBLISH' , String crlf
				, 'BEGIN;ENCODING=ISO-8859-1:VEVENT' , String crlf 				
				, 'UID;ENCODING=ISO-8859-1:' , event uid , String crlf 
				, 'CREATED:20050501T110231Z' , String crlf 
				, 'STATUS;ENCODING=ISO-8859-1:TENTATIVE' , String crlf 
				, 'LAST-MODIFIED:20050501T110231Z' , String crlf 
				, 'SEQUENCE:0' , String crlf
				, 'SUMMARY;ENCODING=ISO-8859-1:aTitle' , String crlf 
				, 'PRIORITY:1' , String crlf 
				, 'DESCRIPTION;ENCODING=ISO-8859-1:a long long long text\, very long... really' , String crlf 
				, ' !' , String crlf 
				, 'LOCATION;ENCODING=ISO-8859-1:Bern' , String crlf 				
				, 'DTSTART:20050425T104500' , String crlf 
				, 'DTEND:20050425T120900' , String crlf 				
				, 'TRANSP;ENCODING=ISO-8859-1:OPAQUE' , String crlf 
				, 'END;ENCODING=ISO-8859-1:VEVENT' , String crlf 
				, 'END;ENCODING=ISO-8859-1:VCALENDAR' , String crlf.
	export dataStream contents 
		keysAndValuesDo: [:index :value |
			self assert: value = (str at: index) ].
	self assert: export dataStream contents = str.
	
	imported := (ICCalendarHandParser parseCalendarString: str) events first.
	self assert: imported textualDescription = 'a long long long text, very long... really!'.