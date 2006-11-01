rendering
renderMeOn: html 
	html div class: 'float';
		
		with: [html div class: 'blue';
				 style: 'float:left;';
				 with: self printTime.
			html div class: 'grey';
				 style: 'float:right;';
				 with: self status].
	html div class: 'grey2';
		 style: 'float:left;';
		
		with: [html anchor
				callback: [self
						lightbox: (ICWebEditor newEvent: self target: html). ];
				 with: event summary]