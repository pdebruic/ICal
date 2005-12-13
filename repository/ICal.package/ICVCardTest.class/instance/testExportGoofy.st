testing-exporting
testExportGoofy
	| cards exporter str |
	cards := ICCardHandParser parseVCardString: self goofyCardString.
	cards anyOne photo: nil.
	
	exporter := ICVCardExporter cards: cards.
	exporter export.
	str := self goofyCardStringExport.

	exporter dataStream contents 
		keysAndValuesDo: [:index :value |
			self assert: value = (str at: index) ].
	self assert: exporter dataStream contents = str.
	