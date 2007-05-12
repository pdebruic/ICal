comparing
< anICFrequencyPeriod

	^ self start < anICFrequencyPeriod start
		or: [ self start = anICFrequencyPeriod start and: [ self end < anICFrequencyPeriod end ] ]