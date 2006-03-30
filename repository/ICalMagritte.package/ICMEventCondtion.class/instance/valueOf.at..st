private
valueOf: aCheckedMemento at: aSelector
	^aCheckedMemento cache
		at: (self descriptionOf: aCheckedMemento at: aSelector)