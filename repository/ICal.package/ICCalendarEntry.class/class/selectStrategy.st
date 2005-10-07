class initialization
selectStrategy
	^Utilities authorInitials = 'lr'
		ifFalse: [ ICRecommendedByStandardStrategy new  ]
		ifTrue: [ ICSqueakUUIDStrategy new ]