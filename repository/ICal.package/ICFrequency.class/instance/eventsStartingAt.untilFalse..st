private
eventsStartingAt: aStartDateAndTime untilFalse: aBooleanBlock
	| dates current freqGenerator datesAtOrAboveFreq |
	
	datesAtOrAboveFreq := OrderedCollection new.
	
	freqGenerator := self nextFrequencyFrom: aStartDateAndTime with: datesAtOrAboveFreq ifNone: [ ^ OrderedCollection new ].
	current := freqGenerator value.
	dates := self dates: (self eventSetFor: current with: datesAtOrAboveFreq) atOrAfter: aStartDateAndTime.
	datesAtOrAboveFreq reset.
	
	[ aBooleanBlock value: dates value: current ] whileTrue: [
			current := freqGenerator value.
			dates addAll: (self eventSetFor: current with: datesAtOrAboveFreq).
			datesAtOrAboveFreq reset.
	].

	^ dates.