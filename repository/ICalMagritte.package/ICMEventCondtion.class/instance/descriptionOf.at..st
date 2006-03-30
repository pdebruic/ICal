private
descriptionOf: aCheckedMemento at: aSelector
	^aCheckedMemento description detect: [ :each |
			each accessor selector = aSelector ]