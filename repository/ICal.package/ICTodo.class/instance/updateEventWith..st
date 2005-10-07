actions
updateEventWith: anEventOrCommand 
	super updateEventWith: anEventOrCommand.

	self due: anEventOrCommand due.

	anEventOrCommand isCompleted ifTrue: [
		self beCompleted.
		anEventOrCommand completed isNil ifTrue: [
			self completed: DateAndTime now.
		] ifFalse: [
			self completed: anEventOrCommand completed.
		].
	] ifFalse: [
		self status: ''.
		self completed: nil.
	].