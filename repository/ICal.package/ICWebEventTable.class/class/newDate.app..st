as yet unclassified
newDate: aDate app: app
	| foo |
	foo := self new.
	foo date: aDate;
		 app: app;
		 initialize2.
	^ foo