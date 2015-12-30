testing
repetitionIsValid
	^ (repetitions isNil and: [ delay isNil ]) or: [ repetitions notNil and: [ delay notNil ] ]