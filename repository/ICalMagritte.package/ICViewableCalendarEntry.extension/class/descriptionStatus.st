*ICalMagritte
descriptionStatus
	^(MASingleOptionDescription selector: #status label: 'Status' priority: 2000)		
		propertyAt: #editable put: true;
		options: self possibleStati;
		reference: MAStringDescription new;
		yourself