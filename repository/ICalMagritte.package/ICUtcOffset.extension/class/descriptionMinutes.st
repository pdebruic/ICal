*ICalMagritte
descriptionMinutes
	^(MANumberDescription selector: #minutes label: 'Minutes' priority: 300)
		addCondition: [ :value | value between: 0 and: 59 ] labelled: '0..59';
		beEditable;
		beInteger;
		beRequired;
		yourself