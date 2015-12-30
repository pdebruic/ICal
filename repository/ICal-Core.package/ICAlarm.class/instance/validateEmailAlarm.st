testing
validateEmailAlarm
	^ self repetitionIsValid and: [ trigger notNil and: [ textualDescription notNil and: [ summary notNil ] ] ]