testing
testSave
	| savedEvent event |
	event := (ICEvent new)
				location: 'bern';
				start: (DateAndTime 
							year: 2005
							month: 4
							day: 18
							hour: 21
							minute: 1);
				end: (DateAndTime 
							year: 2005
							month: 4
							day: 18
							hour: 22
							minute: 1);
				addCategory: (ICCategory summary: 'first');
				summary: 'sleep';
				beMediumPriority;
				textualDescription: 'because I''m always tired';
				yourself.
	calendar addEvent: event.
	savedEvent := calendar events first.
	self assert: calendar events size = 1.
	self assert: savedEvent location = 'bern'.
	self assert: savedEvent categories anyOne = (ICCategory summary: 'first').
	self assert: savedEvent summary = 'sleep'.
	self assert: savedEvent isMediumPriority.
	self assert: savedEvent textualDescription = 'because I''m always tired'.