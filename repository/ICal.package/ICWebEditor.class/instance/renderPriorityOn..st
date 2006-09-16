rendering-choices
renderPriorityOn: html 
	| labels |
	labels := 0 to: 9.
	self
		renderLabel: 'Priority'
		control: [:fid :mid | html select list: labels;
				 selected: priority;
				
				callback: [:value | priority := value];
				 onChange: (html updater id: mid;
					 triggerForm: fid;
					
					callback: [:r | 
						"event event priority: priority.
						r render: priority"])]
		model: priority
		on: html