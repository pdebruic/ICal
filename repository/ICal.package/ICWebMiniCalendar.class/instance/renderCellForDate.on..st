rendering
renderCellForDate: aDate on: html 
	| class |
	class := self date = aDate
				ifTrue: ['calendarArchiveDate']
				ifFalse: ['calendarDate'].
	html
		tableData: [aDate month = self month
				ifTrue: [html div "id: 'cell' , date day printString;"
						 class: class;
						
						
						with: [self renderDate: aDate on: html]]]