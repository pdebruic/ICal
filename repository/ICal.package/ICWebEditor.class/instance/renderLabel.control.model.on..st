rendering-private
renderLabel: aString control: aBlock model: anObject on: html 
	| fid mid |
	fid := mid := nil.
	html div class: 'row';
		
		with: [html div class: 'grey';
				 with: aString.
			html div class: 'blue';
				
				with: [fid := html nextId.
					html form id: fid;
						
						with: [mid := html nextId.
							aBlock value: fid value: mid]].
		
			html div class: 'clear']