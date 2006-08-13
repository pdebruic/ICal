*ICalMagritte
descriptionPercentComplete
	^(MANumberDescription selector: #percentComplete label: 'Percent Complete' priority: 220)
		addCondition: [ :value | value between: 0 and: 100 ] asCondition labelled: 'valid percent range (0..100)';
		beEditable;
		yourself