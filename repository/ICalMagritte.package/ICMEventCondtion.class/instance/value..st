testing
value: anCheckedMemento
	^(self endOf: anCheckedMemento) isNil
		or: [ (self durationOf: anCheckedMemento) isNil ]