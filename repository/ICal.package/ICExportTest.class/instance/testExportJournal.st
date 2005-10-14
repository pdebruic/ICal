testing
testExportJournal
	| export str |
	calendar addJournal: journal.
	export := iCalExporter export.
	str := 'BEGIN:VCALENDAR' , String crlf 
				, 'PRODID:' , calendar productId , String crlf 
				, 'VERSION:2.0' , String crlf 
				, 'BEGIN:VJOURNAL' , String crlf 				
				, 'UID:' , journal uid , String crlf 
				, 'CREATED:20050501T110231Z' , String crlf 
				, 'SEQUENCE:0' , String crlf
				, 'SUMMARY:aTitle'  , String crlf 
				, 'DESCRIPTION:description1' , String crlf  				
				, 'DESCRIPTION:description2' , String crlf 
				, 'END:VJOURNAL' , String crlf 
				, 'END:VCALENDAR' , String crlf.
	export dataStream contents 
		keysAndValuesDo: [:index :value | self assert: value = (str at: index)].
	self assert: export dataStream contents = str