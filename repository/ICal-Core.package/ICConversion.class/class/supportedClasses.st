accessing
supportedClasses
	^OrderedCollection new
		add: Boolean;
		add: ByteArray;
		add: Float;
		add: ICRecurrenceRule;
		add: Integer;
		add: String;		
		add: self urlClass;
		add: self timeClass;
		add: self dateClass;
		add: self dateAndTimeClass;
		add: self durationClass;
		add: ICUtcOffset;
		yourself.