*ICalMagritte
descriptionPhoneNumbers
	^(MAToManyRelationDescription selector: #phoneNumbers label: 'Phone Numbers' priority: 1100)
		propertyAt: #editable put: true;
		classes: (Array with: ICPhoneNumber);
		yourself