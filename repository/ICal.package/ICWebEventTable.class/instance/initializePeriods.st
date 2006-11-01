initialization
initializePeriods
	self week dates do: 
			[:day | 
			| wd |
			wd := ICWebDay new initialize date: day.
			"wd pdate: day printString."
			wd app: app.
			wd cssClass: (day asDate = ICWebDay today
				ifTrue: ['date-today']
				ifFalse: ['date']).

wd
	hourCssClass: (day asDate = ICWebDay today
				ifTrue: ['hour-today']
				ifFalse: ['hour']).
			periods at: day put: wd]