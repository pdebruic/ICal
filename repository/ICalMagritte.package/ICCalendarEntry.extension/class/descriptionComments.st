*ICalMagritte
descriptionComments
	"broken"
	(MAToManyRelationDescription selector: #comments label: 'Comments' priority: 5000)
		classes: (Array with: String);
		reference: MAMemoDescription new;
		beEditable;
		yourself.
	^nil