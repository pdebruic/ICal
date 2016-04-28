*ICal-Core
iCalType
	^ self isBehavior
     ifTrue: [ ICTypeError signal: 'A class in the call stack needs to implement #iCalType' ]
     ifFalse: [ self class iCalType ]