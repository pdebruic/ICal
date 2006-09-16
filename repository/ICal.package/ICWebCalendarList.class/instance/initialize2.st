rendering
initialize2
	| c i |
	webCalendars := OrderedCollection new.
	i := 200.
	app calendars
		keysAndValuesDo: [:k :v | 
			c := ICWebCalendar new.
			c calendar: k;
				 color: v;
				 top: 'top:', i printString ,'px';
				 app: app.
			(app displayedCalendars includes: k)
				ifTrue: [c show]
				ifFalse: [c hide].
			webCalendars add: c.
			i := i + 30]