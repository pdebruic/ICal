testing
testExportUmlautLineBreak
	| line expected |
	iCalExporter stringConversionBlock: [ :string | string squeakToIso isoToUtf8 ].
	line := 'aaabbbcccddd dddcccbbbaaa zzz yyy xxx xxx yyy zzz bla foo bar xyz zyx ttttüfff ggg hhh'.
	expected := ('aaabbbcccddd dddcccbbbaaa zzz yyy xxx xxx yyy zzz bla foo bar xyz zyx tttt', String crlf,
		' üfff ggg hhh', String crlf) squeakToIso isoToUtf8.
	
	self assert: (iCalExporter exportLine: line) dataStream contents = expected.