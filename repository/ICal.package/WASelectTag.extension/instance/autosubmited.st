*ICal-SummerTalk
autosubmited

	self id ifNil: [self id: canvas nextId].
	self onChange: (canvas request triggerFormElement: self id)