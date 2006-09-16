rendering-private
renderButtonOn: html callback: cb text: text fid: fid 
	html submitButton onClick: (html updater id: event id;
			 triggerForm: fid;
			
			callback: cb;
			 return: false);
		 text: text