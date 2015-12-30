testing
isValid
	self isDisplay
		ifTrue: [ ^ self validateDisplayAlarm ].
	self isAudio
		ifTrue: [ ^ self validateAudioAlarm ].
	self isEmail
		ifTrue: [ ^ self validateEmailAlarm ].
	^ self validateGenericAlarm