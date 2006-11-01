rendering
renderPreviousWeekOn: html

html div onClick: (html updater id: 'week';
					
					callback: [:render | 
						self
							date: (date subtractDays: 7).
						self initializePeriods.
						self renderTableOn: html]);
				 onClick: (html updater id: 'weekNumber';
					
					callback: [:render | self renderWeekNumberOn: html]);
				 with: '< previous week'