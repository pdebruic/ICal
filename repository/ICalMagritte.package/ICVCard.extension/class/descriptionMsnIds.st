*ICalMagritte
descriptionMsnIds
	^(MAToManyRelationDescription selector: #msnids label: 'MSN IDs' priority: 800)
		propertyAt: #editable put: true;
		classes: (Array with: ICMSNId);
		yourself