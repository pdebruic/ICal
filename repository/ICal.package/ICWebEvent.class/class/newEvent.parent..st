as yet unclassified
newEvent: anICEvent parent: aParent
	| e calendar |
	e:= self new.	
	e event: anICEvent .
	e parent: aParent .

calendar := (aParent app calendars keys select: [:cal | cal events includes: anICEvent ]) asOrderedCollection first.

	e color: (aParent app calendars at: calendar ). 
	e calendar: calendar.
	" := parent app calendars at: calendar"
^e
	