*ICalMagritte
descriptionContainer
	^super descriptionContainer
		addCondition: ICMEventCondtion new labelled: ICMEventCondtion defaultLabel;
		yourself