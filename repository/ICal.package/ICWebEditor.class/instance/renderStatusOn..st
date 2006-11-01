rendering-choices
renderStatusOn: html 
	| labels |
	labels := #('TENTATIVE' 'CONFIRMED' '' ).
	self
		renderLabel: 'Status'
		control: [:fid :mid | html select list: labels;
				 selected: status;
				
				callback: [:value | status := value];
				 onChange: (html updater id: mid;
					 triggerForm: fid;
					
					callback: [:r | 
						"event event status: status.
						r render: status"])]
		model: status
		on: html