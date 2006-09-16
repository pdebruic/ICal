rendering
renderMeOn: html 
html div class:'calendar-date'; onClick: (html updater id: id1;
					
					callback: [:r | 
						
						shouldDisplay:= shouldDisplay not. 
						html div id: id1; style:'visibility:',self visibility; with:  [self renderMiniCalendarOn: html].
						]);
					
				 with: date.
				
				html div id: id1; class:'inplace';style:'visibility:',self visibility; with:  [self renderMiniCalendarOn: html].	
	