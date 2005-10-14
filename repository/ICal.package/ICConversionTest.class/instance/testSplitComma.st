testing
testSplitComma
	| splitter parts |
	splitter := ICCalendarGenerator basicNew.
	parts := splitter splitAtCommas: 'a,b,c'.
	self assert: parts = #('a' 'b' 'c') asOrderedCollection.
	
	parts := splitter splitAtCommas: 'a\,b,c'.
	self assert: parts = #('a\,b' 'c') asOrderedCollection.
	
	parts := splitter splitAtCommas: 'a\,b\,c'.
	self assert: parts = #('a\,b\,c') asOrderedCollection.
	
	"parts := splitter splitAtCommas: ',,'.
	self assert: parts = #('' '' '') asOrderedCollection.
	
	parts := splitter splitAtCommas: ',\,'.
	self assert: parts = #('' '\,') asOrderedCollection."