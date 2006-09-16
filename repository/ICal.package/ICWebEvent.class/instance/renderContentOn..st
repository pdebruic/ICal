rendering
renderContentOn: html 
	html div id: id;
		 class: 'event-' , self color;
		 style: 'padding:3px;width:82px;' , self printHeight , ';' , self printTop;
		
		
		with: [self renderMeOn: html]