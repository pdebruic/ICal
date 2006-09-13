*ICalMagritte
descriptionSeconds
	^(MANumberDescription selector: #seconds label: 'Seconds' priority: 400)
		addCondition: [ :value | value between: 0 and: 59 ] labelled: '0..59';
		beEditable;
		beInteger;
		yourself