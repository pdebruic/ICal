*ICalMagritte
descriptionName
	^(MAToOneRelationDescription selector: #name label: 'Name' priority: 200)
		propertyAt: #editable put: true;
		stringWriter: ICMDisplayStringWriter;
		classes: (Array with: ICName);
		yourself