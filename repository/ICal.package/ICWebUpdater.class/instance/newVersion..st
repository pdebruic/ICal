as yet unclassified
newVersion: aWorkingCopy
	| version s |
	version _ [aWorkingCopy newVersion]
				on: MCVersionNameAndMessageRequest 
				do: [:n | n resume: (Array with: n suggestedName with: '')].
	s _ RWBinaryOrTextStream on: String new.
	version fileOutOn: s.
	self session respond:
		[:u |
		u addToPath: version fileName.
		WAResponse redirectTo: u displayString].
	self session returnResponse: (WAResponse new
									contentType: 'application/octet-stream';
									nextPutAll: s contents;
									yourself)