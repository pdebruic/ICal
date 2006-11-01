rendering
renderEditorOn: html 
	html div class: 'editor';
		
		with: ["left panel"
			self renderSummaryOn: html.
			self renderStartDateOn: html].
	html div class: 'editor';
		
		with: ["middle pannel"
			self renderLocationOn: html.
			self renderPriorityOn: html.
			self renderTimeOn: html.
			
			self renderCalendarOn: html .
			self renderStatusOn: html].
	html div class: 'editor';
		
		with: ["right panel"
			self renderSaveButtonOn: html.
			self renderCancelButtonOn: html]