freebusy
removeFreeBusyWithUid: aString
	| freebusy |
	freebusy := self freebusy detect: [ :each | each uid = aString] ifNone: [^nil].
	^self removeFreebusy: freebusy.
	