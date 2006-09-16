as yet unclassified
renderContentOn: html 
	html div
		id: 'time-selector';
		with: [html select
				"id: html nextId;"
				autosubmited;
				list: (0 to: 23);
				selected: hour;
				callback: [:i |  hour := i];
				labels: [:ea | ea].
			html select
				"id: html nextId;"
				autosubmited;
				list: ((0 to: 59) );
				selected: minute;
				callback: [:i | minute := i];
				labels: [:ea | ea]].
			"html select
				id: html nextId;
				list: (0 to: 59);
				selected: second;
				autosubmited;
				callback: [:i | second := i];
				labels: [:ea | ea].]."
		
	self timeIsValid ifFalse: [self renderValidationErrorOn: html]