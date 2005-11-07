exporting
exportLine: aString
	| string first |
	first := true.
	
	self flag: #XXX. "#withNoLineLongerThan: is bugged"
	string := aString withNoLineLongerThan: 75.
	string linesDo: [ :each |
		first ifFalse: [
			self dataStream nextPut: Character space ]. 
		self dataStream
			nextPutAll: each;
			nextPutAll: String crlf.
		first := false ] fixTemps.
	