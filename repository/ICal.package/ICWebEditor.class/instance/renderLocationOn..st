rendering-inputs
renderLocationOn: html 
	self
		renderLabel: 'Location'
		control: [:fid :mid | html textInput value: location;
				
				callback: [:value | 
					location := value.
					"event event location: location"];
					 onBlur:  (html updater id: mid ;  triggerForm: fid; callback: [:r | 	"event event location: location." ];return: false)]
		model: location
		on: html