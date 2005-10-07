synchronizing
deleteEventsNotInFile: aCollection

	| uids |
	uids := self calendar events collect: [ :each | each uid ].
	aCollection do: [ :each | uids remove: each uid ifAbsent: [nil]].
	
	uids do: [ :uid | self calendar removeEventWithUid: uid ].