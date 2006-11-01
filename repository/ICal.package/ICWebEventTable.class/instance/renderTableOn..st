rendering
renderTableOn: html 
	html div
		with: [html div class: 'float';
				
				with: [html div class: 'blue';
						 with: 'Dates'.
					0
						to: 24
						do: [:i | html div class: 'hours';
								 with: i printString , 'h00']].
			date asWeek
				datesDo: [:d | html
						render: (periods at: d)]]