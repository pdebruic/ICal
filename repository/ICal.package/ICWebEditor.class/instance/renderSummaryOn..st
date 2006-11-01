rendering-inputs
renderSummaryOn: html 
	self
		renderLabel: 'Summary'
		control: [:fid :mid | html textArea value: summary;
				
				callback: [:value | 
					summary := value.
					
				];
				 onBlur:  (html updater id: mid ;  triggerForm: fid; callback: [:r | ];return: false)]
		model: summary
		on: html

