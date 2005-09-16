events
toDos
	^self events select: [:appointment | appointment isToDo]