*ICalMagritte
descriptionStatus
	^(MASingleOptionDescription selector: #status label: 'Status' priority: 2000)		
		beEditable;
		options: self possibleStati;
		reference: MAStringDescription new;
		yourself