*ICalMagritte
descriptionTypes
	^(MAMultipleOptionDescription selector: #types label: 'Types' priority: 500)
		componentClass: MACheckboxGroupComponent;
		beEditable;
		options: self possibleTypes;
		default: self defaultTypes;
		reference: MAStringDescription new;
		yourself