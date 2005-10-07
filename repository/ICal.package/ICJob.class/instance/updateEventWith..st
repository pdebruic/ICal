actions
updateEventWith: anEventOrCommand 

	self summary: anEventOrCommand summary.
	self categories: anEventOrCommand categories.
	self textualDescription: anEventOrCommand textualDescription.
	self status: anEventOrCommand status.
	self priority: anEventOrCommand priority.
	
	self modified.