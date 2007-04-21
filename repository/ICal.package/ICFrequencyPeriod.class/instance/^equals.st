comparing
= anICFrequencyPeriod

	^ anICFrequencyPeriod class = ICFrequencyPeriod
		ifTrue: [ start = anICFrequencyPeriod start and: [ end = anICFrequencyPeriod end ] ]
		ifFalse: [ super = anICFrequencyPeriod ]