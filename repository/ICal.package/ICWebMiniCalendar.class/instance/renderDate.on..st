rendering
renderDate: aDate on: html 
	html
		span: [(self canSelect: aDate)
				ifTrue: [html div onClick: (html updater id: id4;
							
							callback: [:r | 
								self select: aDate.
								
								
								self renderMeOn: html]);
						 with: aDate dayOfMonth]
				ifFalse: [html text: aDate dayOfMonth]]