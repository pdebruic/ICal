as yet unclassified
addCalendar: aCalendar
	| color wc i |
	color:= ICWebApplication calendars at: aCalendar .
	
	wc:= ICWebCalendar new.
	wc color: color.
	wc calendar: aCalendar .
	wc app: app.
		i := 200 + (30 * webCalendars size ).
	wc top: 'top:', i printString , 'px'.
	(app displayedCalendars includes: aCalendar )
				ifTrue: [wc show]
				ifFalse: [wc hide].
			webCalendars add: wc.
	^wc