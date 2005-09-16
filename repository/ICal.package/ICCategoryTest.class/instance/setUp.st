configuration
setUp
	| categories |
	calendar := ICCalendar title: ' Test Calendar '.
	categories := OrderedCollection new.
	category1 := ICCategory title: 'tennis club'.
	category1 explanation: 'this category is for tennis club events'.
	category1 color: 'red'.
	category2 := ICCategory title: 'family'.
	category2 explanation: 'for family events'.
	category2 color: 'green'.
	categories := OrderedCollection with: category1 with: category2.
	calendar categories: categories