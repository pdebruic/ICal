accessing
supportedComponents
	^(OrderedCollection new)
		add: ICEvent;
		add: ICTodo;
		add: ICAlarm;
		add: ICFreeBusy;
		add: ICTimeZone;
		add: ICJournal;
		yourself