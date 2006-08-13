*ICalMagritte
descriptionName
	^(MAToOneRelationDescription selector: #name label: 'Name' priority: 200)
		beEditable;
		stringWriter: ICMDisplayStringWriter;
		classes: (Array with: ICName);
		yourself