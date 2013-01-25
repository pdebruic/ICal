private
createTodo
	^(ICTodo summary: 'aTitle')
				textualDescription: 'a long long long text, very long... really!';
				due: (self dateAndTimeClass
							year: 2005
							month: 4
							day: 25
							hour: 12
							minute: 9
							second: 00);
				lastModified: (self dateAndTimeClass 
							year: 2005
							month: 5
							day: 1
							hour: 11
							minute: 2
							second: 31);
				created: (self dateAndTimeClass 
							year: 2005
							month: 5
							day: 1
							hour: 11
							minute: 2
							second: 31);
				completed: (self dateAndTimeClass 
							year: 2005
							month: 5
							day: 1
							hour: 11
							minute: 2
							second: 31);
				beHighPriority;
				beCompleted;
				yourself.