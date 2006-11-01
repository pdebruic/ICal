rendering-choices
renderCalendarOn: html 
	| labels |
	labels := event parent app calendars keys.
	self
		renderLabel: 'Calendar'
		control: [:fid :mid | html select list: labels;
				 selected: calendar;
				
				callback: [:value | calendar := value];
				 onChange: (html updater id: mid;
					 triggerForm: fid;
					
					callback: [:r | ])]
		model: calendar
		on: html