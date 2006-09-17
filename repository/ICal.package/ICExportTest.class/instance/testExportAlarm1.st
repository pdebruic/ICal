testing
testExportAlarm1
	| export str alarmEvent created |
	alarmEvent := ICEvent summary: 'an alarming event'.
	alarmEvent addAlarm: alarm1.
	created := alarmEvent created.
	alarmEvent uid: 'xxx'.
	calendar addEvent: alarmEvent.
	export := iCalExporter export.
	str := 'BEGIN:VCALENDAR' , String crlf 
				, 'PRODID:' , calendar productId , String crlf 
				, 'VERSION:2.0' , String crlf 
				, 'X-WR-CALNAME:test' , String crlf 
				, 'METHOD:PUBLISH' , String crlf
				, 'BEGIN:VEVENT' , String crlf 				
				, 'UID:' , alarmEvent uid , String crlf 
				, 'CREATED:' , created asICalUtcString , String crlf 
				, 'SEQUENCE:0' , String crlf
				, 'SUMMARY:an alarming event' , String crlf 
				, 'PRIORITY:5' , String crlf
				, 'BEGIN:VALARM' , String crlf 
				, 'ACTION:AUDIO' , String crlf 
				, 'TRIGGER;VALUE=DATE-TIME:19970317T133000' , String crlf 
				, 'DURATION:PT0H15M0S' , String crlf 
				, 'REPEAT:4' , String crlf 
				, 'ATTACH:ftp://host.com/pub/sounds/bell-01.aud' , String crlf 
				, 'END:VALARM' , String crlf 
				, 'END:VEVENT' , String crlf 
				, 'END:VCALENDAR' , String crlf.
	export dataStream contents 
		keysAndValuesDo: [:index :value |
			self assert: value = (str at: index) ].
	self assert: export dataStream contents = str