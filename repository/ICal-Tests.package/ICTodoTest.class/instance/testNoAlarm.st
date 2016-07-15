as yet unclassified
testNoAlarm
	| todo |
	todo := ICTodo new.
	todo due: self timeClass epoch.
	self assert: (todo startsInHour: self timeClass now) not.
	self assert: (todo startsInHour: self timeClass epoch).
	self assert: (todo isValidForDate: self timeClass now) not.
	self assert: (todo isValidForDate: self timeClass epoch asDate).
	self assert: todo isCompleted not.
	self assert: todo isInProcess not.
	self assert: todo isNeedsAction not.
	todo beNeedsAction .
		self assert: todo isNeedsAction.
	todo beInProcess.
	self assert: todo isInProcess.
	todo beCompleted.
	self assert: todo isCompleted