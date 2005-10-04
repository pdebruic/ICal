accessing
supportedClasses
	^OrderedCollection new
		add: Date;
		add: DateAndTime;
		add: Time;
		add: Duration;
		add: Float;
		add: Integer;
		add: String;
		add: Url;
		add: ICRecurrenceRule;
		yourself