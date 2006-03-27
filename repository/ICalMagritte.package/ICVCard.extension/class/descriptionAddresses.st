*ICalMagritte
descriptionAddresses
	^(MAToManyRelationDescription selector: #addresses label: 'Addresses' priority: 510)
		propertyAt: #editable put: true;
		classes: (Array with: ICAddress);
		yourself