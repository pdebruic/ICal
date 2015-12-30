testing
validateDisplayAlarm
	^ self repetitionIsValid and: [ trigger notNil and: [ textualDescription notNil ] ]