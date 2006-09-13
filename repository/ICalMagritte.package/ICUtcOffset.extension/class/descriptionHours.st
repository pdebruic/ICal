*ICalMagritte
descriptionHours
	^(MANumberDescription selector: #hours label: 'Hours' priority: 200)
		addCondition: [ :value | value between: 0 and: 23 ] labelled: '0..23';
		beEditable;
		beInteger;
		beRequired;
		yourself