as yet unclassified
newEventOn: html 
	| editor e |
	editor := self new.
	e := ICWebEvent new.
	e id: 1234.
	e createEvent.
	editor event: e;
		 initialize2;
		 target: html.
	^ editor