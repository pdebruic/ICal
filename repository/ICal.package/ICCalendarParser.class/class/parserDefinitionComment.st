generated-comments
parserDefinitionComment

	"Calendar:
	Begin CalendarBody End   					#{}
	;

Begin:
	""BEGIN:VCALENDAR"" <ENDL>					#{}
	;

End:
	""END:VCALENDAR"" <ENDL>   		     		#{}
	;

CalendarBody:
	HeaderList ComponentList					#{}
	; 

HeaderList : 
	HeaderList HeaderLine
	| HeaderLine
	;

HeaderLine:
	""VERSION"" <ATTRIBUTE>  'attribute'				#{} 				
	| ""X-WR-CALNAME""<ATTRIBUTE> 'attribute'			#{}		
	| ""PRODID""<ATTRIBUTE>							#{}		
	| ""X-WR-RELCALID""<ATTRIBUTE>					#{}		
	| ""X-WR-TIMEZONE""<ATTRIBUTE>					#{}		
	| ""CALSCALE""<ATTRIBUTE>							{ self unsupportedICalAppend: '1' value, '2' value.}
	| ""METHOD""<ATTRIBUTE>							#{}
	| ""TZID""<ATTRIBUTE>								{ self unsupportedICalAppend: '1' value, '2' value.}
	| ""LAST-MODIFIED""<TIMESTAMP>					#{}		
	| ""DTSTART""<TIMESTAMP>							#{}	
	| ""TZOFFSETTO""<ATTRIBUTE>						{ self unsupportedICalAppend: '1' value,'2' value.}		
	| ""TZOFFSETFROM""<ATTRIBUTE>						{ self unsupportedICalAppend: '1' value,'2' value.}		
	| ""TZNAME""<ATTRIBUTE>							{ self unsupportedICalAppend: '1' value,'2' value.}		
		
	| ""BEGIN:STANDARD""<ENDL>						{ self unsupportedICalAppend: '1' value,'2' value.}		
	| ""END:STANDARD""<ENDL>							{ self unsupportedICalAppend: '1' value,'2' value.}
	| ""BEGIN:VTIMEZONE""<ENDL>						{ self unsupportedICalAppend: '1' value,'2' value.}
	| ""END:VTIMEZONE""<ENDL>							{ self unsupportedICalAppend: '1' value,'2' value.}
	| ""BEGIN:DAYLIGHT""<ENDL>							{ self unsupportedICalAppend: '1' value,'2' value.}
	| ""END:DAYLIGHT""<ENDL>							{ self unsupportedICalAppend: '1' value,'2' value.}

	;

ComponentList:
	ComponentList Component  						#{}
	| Component 									#{}
	;

Component:
	EventHeader EventComponent					
	| ToDoHeader TodoComponent						
	;

EventHeader:
	""BEGIN:VEVENT"" <ENDL> 	{self createTempEvent.}
	;
		
ToDoHeader:
	""BEGIN:VTODO"" <ENDL> 	{self createTempToDo. }	
	;
	
EventComponent:
	EventList ""END:VEVENT""<ENDL>	
	;
	
TodoComponent:
	TodoList ""END:VTODO""<ENDL>	
	;	

EventList:
	EventList EventProperty    								#{}
	| EventProperty 											#{}
	;

EventProperty:
	""LOCATION"" <ATTRIBUTE> 'string'			{ self tempEvent place: (self parseAttribute: string value).}
	| ""DTEND"" <TZID><TIMESTAMP> 'ts'			{ self tempEvent endDateAndTime: (self dateAndTimeFromICal: (self parseAttribute: ts value)).}
	| ""DTEND"" <TIMESTAMP> 'ts'				{ self tempEvent endDateAndTime: (self dateAndTimeFromICal: (self parseAttribute: ts value)).}
	| ""STATUS"" <ATTRIBUTE> 'string'			{ self tempEvent status: (self statusFromString: (self parseAttribute: string value)).}
	| ""UID"" <ATTRIBUTE> 'string'				{ self tempEvent id: (self idFromString: (self parseAttribute: string value)). }
	| ""DTSTART"" <TZID><TIMESTAMP> 'ts'			{ self tempEvent startDateAndTime: (self dateAndTimeFromICal: (self parseAttribute: ts value)).}
	| ""DTSTART"" <TIMESTAMP> 'ts'				{ self tempEvent startDateAndTime: (self dateAndTimeFromICal: (self parseAttribute: ts value)).}
	| ""SUMMARY"" <ATTRIBUTE> 'string'		{ self tempEvent title: (self parseAttribute: string value).}
	| ""DESCRIPTION"" <ATTRIBUTE> 'text'			{ self tempEvent text: (self parseAttribute: text value).}
	| ""DURATION"" <ATTRIBUTE>					{ self tempEvent unknownFieldsAppend: '1' value,'2' value.}
	| ""SEQUENCE""<ATTRIBUTE>	'string'			{ self tempEvent version: ((self parseAttribute: string value) asNumber).}
	| ""CATEGORIES""<ATTRIBUTE> 'string'		{ self tempEvent category: (self categoryForString: (self parseAttribute: string value)).}
	| ""DTSTAMP"" <TIMESTAMP>  'ts'			{ self tempEvent tsCreated: (self timestampFromICal: (self parseAttribute: ts value)).}
	| ""CREATED"" <TIMESTAMP>  'ts'				{ self tempEvent tsCreated: (self timestampFromICal: (self parseAttribute: ts value)).}
	| ""RRULE""<ATTRIBUTE>						{ self tempEvent unknownFieldsAppend: '1' value,'2' value.}
	| ""LAST-MODIFIED""<TIMESTAMP> 'ts'			{ self tempEvent tsModified: (self timestampFromICal: (self parseAttribute: ts value)).}
	| ""TRANSP""<ATTRIBUTE>					{ self tempEvent unknownFieldsAppend: '1' value,'2' value.}
	| ""CLASS""<ATTRIBUTE>						{ self tempEvent unknownFieldsAppend: '1' value, '2' value.}
	| ""ORGANIZER""<ATTRIBUTE>				{ self tempEvent unknownFieldsAppend: '1' value, '2' value.}
	| ""PRIORITY"" <ATTRIBUTE>	'string'			{ self tempEvent priority: (self priorityFromString: (self parseAttribute: string value)).}
	| <ALARM>								{ self tempEvent unknownFieldsAppend: '1' value.}
	| ""X-MICROSOFT-CDO-IMPORTANCE"" <ATTRIBUTE>  { }
	 ;

TodoList:
	TodoList TodoProperty					#{}
	| TodoProperty 							#{}
	;

TodoProperty:

	""PRIORITY"" <ATTRIBUTE>	'string'				{ self tempToDo priority: (self priorityFromString: (self parseAttribute: string value)).}
	| ""DUE;VALUE=DATE"" <ATTRIBUTE> 'ts'			{ self tempToDo tsDeadline: (self dateAndTimeFromICal: (self parseAttribute: ts value)).}												
	| ""DUE;VALUE=DATE-TIME"" <TIMESTAMP> 'ts'		{ self tempToDo tsDeadline: (self dateAndTimeFromICal: (self parseAttribute: ts value)).}												
	| ""STATUS"" <ATTRIBUTE>   'string'				{ self tempToDo unknownFieldsAppend: '1' value,'2' value.}
	| ""UID"" <ATTRIBUTE> 'string'					{ self tempToDo id: (self idFromString: (self parseAttribute: string value)). }
	| ""DTSTART"" <TZID><TIMESTAMP> 'ts'				{ self tempToDo unknownFieldsAppend: '1' value,'2' value,'3' value.}
	| ""DTSTART"" <TIMESTAMP> 'ts'					{ self tempToDo unknownFieldsAppend: '1' value,'2' value.}
	| ""DTSTART;VALUE=DATE:"" <NUMERO>			{ self tempToDo unknownFieldsAppend: '1' value,'2' value.}
	| ""SUMMARY"" <ATTRIBUTE>  'string'			{ self tempToDo title: (self parseAttribute: string value).}
	| ""DESCRIPTION"" <ATTRIBUTE> 'text'				{ self tempToDo text: (self parseAttribute: text value).}
	| ""SEQUENCE""<ATTRIBUTE>						{ self tempToDo version: ((self parseAttribute: '2' value) asNumber).}
	| ""CATEGORIES""<ATTRIBUTE> 'string'			{ self tempToDo category: (self categoryForString: (self parseAttribute: string value)).}
	| ""DTSTAMP"" <TIMESTAMP> 'ts'					{ self tempToDo tsCreated: (self timestampFromICal: (self parseAttribute: ts value)).}
	| ""CREATED"" <TIMESTAMP> 	 'ts'					{ self tempToDo tsCreated: (self timestampFromICal: (self parseAttribute: ts value)).}
	| ""RRULE""<ATTRIBUTE>							{ self tempToDo unknownFieldsAppend: '1' value, '2' value.}
	| ""COMPLETED""<TIMESTAMP> 'ts'				{ self tempToDo status: 'completed'.
												  self tempToDo tsCompleted: (self timestampFromICal: (self parseAttribute: ts value)).}
	| ""DURATION"" <ATTRIBUTE>						{ self tempToDo unknownFieldsAppend: '1' value,'2' value.}
	| ""LAST-MODIFIED""<TIMESTAMP> 'ts' 			{ self tempToDo tsModified: (self timestampFromICal: (self parseAttribute: ts value)).}
	| ""TRANSP""<ATTRIBUTE>						{ self tempToDo unknownFieldsAppend: '1' value,'2' value.}
	| ""CLASS""<ATTRIBUTE>							{ self tempToDo unknownFieldsAppend: '1' value, '2' value.}
	| ""ORGANIZER""<ATTRIBUTE>					{ self tempToDo unknownFieldsAppend: '1' value, '2' value.}
	| ""PERCENTCOMPLETED""<ATTRIBUTE>				{ self tempToDo unknownFieldsAppend: '1' value, '2' value.}
	| <ALARM>									{ self tempToDo unknownFieldsAppend: '1' value.}
	;
"