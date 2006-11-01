rendering
renderContentOn: html 
	html div class: 'lightbox';
		
		with: [html div class: 'blue';
				
				with: [self renderEditorOn: html].
					
			]