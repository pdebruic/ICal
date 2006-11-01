rendering
renderContentOn: html 
	html div class: 'float';
		
		with: [html div class: 'blue';
				 with: '+'].
	html div 
		
		with: [html div class: self timeColor;
				 with: self printTime].
	html div 
		
		with: [html div class: 'todo-',color;
				 with:  todo summary]