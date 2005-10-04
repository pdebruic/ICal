actions
updateEventWith: anEventOrCommand 
	super updateEventWith: anEventOrCommand.

	self tsDeadline: anEventOrCommand tsDeadline.

	anEventOrCommand isCompleted ifTrue: [
		self status: 'completed'.
		anEventOrCommand tsCompleted isNil ifTrue: [
			self tsCompleted: TimeStamp now.
		] ifFalse: [
			self tsCompleted: anEventOrCommand tsCompleted.
		].
	] ifFalse: [
		self status: ''.
		self tsCompleted: nil.
	].