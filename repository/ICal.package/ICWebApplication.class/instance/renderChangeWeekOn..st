rendering
renderChangeWeekOn: html

html div class: 'blue';
		
		with: [html anchor
				callback: [self date: self date - 7];
				 text: '<'.
			html space.
			html anchor
				callback: [self date: self date + 7];
				 text: '>'].