rendering
renderMonthNavigationOn: html 
	html div class: 'calendarPrevious';
		
		with: [html div onClick: (html updater id: id1;
					
					callback: [:render | 
						self month: self month previous.
						html div id: id1;
							 style: 'visibility:' , self visibility;
							
							with: [self renderMiniCalendarOn: html]]);
				 with: '<'].
	html div class: 'calendarMonth';
		 with: self month.
	html div class: 'calendarNext';
		
		with: [html div onClick: (html updater id: id1;
					
					callback: [:render | 
						self month: self month next.
						html div id: id1;
							 style: 'visibility:' , self visibility;
							
							with: [self renderMiniCalendarOn: html]]);
				 with: '>']