configuration
setUp
	calendar := ICCalendar title: 'the calendar'.
	category := ICCategory title: 'irishdance'.
	category
		color: 'SpringGreen';
		explanation: 'for irishdace events like trainings or dancing shows'.
	calendar addCategory: category