rendering
renderCheckBoxOn: html 
	| id |
	id := html nextId.
	html form id: id;
		
		with: [html checkbox value: display;
				
				callback: [:value | display := value];
				 onClick: (html updater id: 'week';
					 triggerForm: id;
					
					callback: [:r | 
						display
							ifTrue: [ICWebEvent show: calendar
										"app displayedCalendars add:
										calendar "]
							ifFalse: [ ICWebEvent hide: calendar
										"app displayedCalendars remove:
										calendar "].
						app table renderTableOn: html]);
				 with: calendar ]