todos
todosForDate: aDate 
	^self todos select: [:event | event isValidForDate: aDate]