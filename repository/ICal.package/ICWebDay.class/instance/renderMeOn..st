rendering
renderMeOn: html 
	html div
		class: cssClass;
		 with: self printDate.
	"html div id: pdate , '-hours';
		
		with: ["self renderHoursOn: html"]".
	"html div class: 'dayborder';
		 id: pdate;
		
		with: ["self renderEventsOn: html"]"