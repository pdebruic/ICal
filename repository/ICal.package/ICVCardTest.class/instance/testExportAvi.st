testing
testExportAvi
	| cards exporter str |
	cards := ICCardHandParser parseVCardString: self aviCardString.
	cards anyOne photo: nil.
	
	exporter := ICVCardExporter cards: cards.
	exporter export.
	str := self aviCardStringExport.

	exporter dataStream contents 
		keysAndValuesDo: [:index :value |
			self assert: value = (str at: index) ].
	self assert: exporter dataStream contents = str.
	