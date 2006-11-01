rendering
renderHour: i on: html 
	
	html div id: (hoursId at: i);
		 class: hourCssClass;
		 style: (self printHourTop: i)
	"onClick: (html updater 
	
	callback: [:render | |event| event:= (ICWebEvent new) createEvent; color:
	'blue'. (event	lightbox: (ICWebEditor newEvent: event target: html ))])"