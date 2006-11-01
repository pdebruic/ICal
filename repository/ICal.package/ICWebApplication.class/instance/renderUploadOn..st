rendering
renderUploadOn: html 
	html div style: 'float:left';
		 class: 'blue';
		
		with: [html form
				with: [html submitButton
						callback: [self setUp.
							self initialize];
						 text: 'reset']].
	html form attributeAt: 'enctype' put: 'multipart/form-data';
		
		with: [html fileUpload value: '';
				
				callback: [:f | self addCalendarFromFile: f].
			html submitButton text: 'Send file']