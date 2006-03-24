*ICalMagritte
descriptionEmailAddresses
	^(MAToManyRelationDescription selector: #emailAddresses label: 'EMail Addresses' priority: 500)
		propertyAt: #editable put: true;
		classes: (Array with: ICEmailAddress);
		yourself