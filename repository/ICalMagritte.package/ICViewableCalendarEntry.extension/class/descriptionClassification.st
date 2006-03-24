*ICalMagritte
descriptionClassification
	^(MASingleOptionDescription selector: #classification label: 'Classification' priority: 2100)		
		propertyAt: #editable put: true;
		options: self possibleClassifications;
		reference: MAStringDescription new;
		yourself