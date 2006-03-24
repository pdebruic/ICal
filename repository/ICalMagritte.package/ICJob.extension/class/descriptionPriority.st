*ICalMagritte
descriptionPriority
	^(MASingleOptionDescription selector: #textualPriority label: 'Priority' priority: 700)
		options: self textualPriorities;
		propertyAt: #editable put: true;
		yourself
		