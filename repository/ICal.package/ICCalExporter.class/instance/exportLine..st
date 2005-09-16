exporting
exportLine: aString
	| string count |
	count := 0.
	string := aString withNoLineLongerThan: 75.
	string linesDo: [:line | count > 0 ifTrue: [self dataStream nextPut: Character space]. 
						  self dataStream nextPutAll: line, String cr, String lf.
					       count := count + 1].
	