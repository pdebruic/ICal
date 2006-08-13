*ICalMagritte
descriptionClassification
	^(MASingleOptionDescription selector: #classification label: 'Classification' priority: 2100)		
		beEditable;
		options: self possibleClassifications;
		reference: MAStringDescription new;
		yourself