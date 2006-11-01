action
select: aDate
	self date: aDate.
	selectBlock ifNotNil: [selectBlock value: aDate]