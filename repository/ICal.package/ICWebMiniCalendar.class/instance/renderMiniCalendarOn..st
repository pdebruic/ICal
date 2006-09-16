rendering
renderMiniCalendarOn: html

html div id: id2;
		
		with: [html div id: id3;
				 class: 'calendarNavigation';
				
				with: [self renderMonthNavigationOn: html].
			html space.
			html div 
				
				with: [html
						table: [html tableRow: [self weekDays
												do: [:ea | html tableData class:'calendarTitle'; with: ea]].
											
							self month
								weeksDo: [:week | self renderRowForWeek: week on: html]]]]