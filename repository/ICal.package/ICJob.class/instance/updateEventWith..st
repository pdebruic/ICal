actions
updateEventWith: anEventOrCommand 

	self title: anEventOrCommand title.
	self category: anEventOrCommand category.
	self text: anEventOrCommand text.
	self status: anEventOrCommand status.
	self priority: anEventOrCommand priority.
	self tsModified: TimeStamp now.
	
	self hasAlert: anEventOrCommand hasAlert.
	anEventOrCommand hasAlert ifTrue: [
		self alertTime: anEventOrCommand alertTime.
	] ifFalse: [
		self alertTime: nil.	
	].