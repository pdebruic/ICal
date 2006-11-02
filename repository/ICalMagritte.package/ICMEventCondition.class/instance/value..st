testing
value: aCheckedMemento
	^(self endOf: aCheckedMemento) isNil
		or: [ (self durationOf: aCheckedMemento) isNil ]