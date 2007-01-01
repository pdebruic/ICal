testing
testExportUmlautLineNoBreak
	| line expected |
	iCalExporter stringConversionBlock: [ :string | string squeakToIso isoToUtf8 ].
	line := 'aaabbbcccddd dddcccbbbaaa zzz yyy xxx xxx yyy zzz bla foo bar xyz zyx tttüfff ggg hhh'.
	expected := ('aaabbbcccddd dddcccbbbaaa zzz yyy xxx xxx yyy zzz bla foo bar xyz zyx tttü', String crlf,
		' fff ggg hhh', String crlf) squeakToIso isoToUtf8.
	
	self assert: (iCalExporter exportLine: line) dataStream contents = expected.