todos
removeTodoWithUid: aString
	| todo |
	todo := self todo detect: [ :each | each uid = aString] ifNone: [^nil].
	^self removeTodo: todo.