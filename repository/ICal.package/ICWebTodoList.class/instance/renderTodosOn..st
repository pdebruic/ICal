rendering
renderTodosOn: html 
	| i |
	i := 100.
	app todos do: 
			[:todo | 
			(html div)
				class: 'todo';
				style: 'top:' , i printString , 'px;';
				with: [html render: todo].
			i := i + 35]