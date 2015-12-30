testing
alarmRepeats
	^ repetitions notNil and: [ delay notNil and: [ repetitions > 0 and: [ delay isZero not ] ] ]