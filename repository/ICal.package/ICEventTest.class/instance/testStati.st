tests
testStati
	| stati |
	stati := ICEvent possibleStati asSet.
	self assert: stati size = 3.
	self assert: (stati includes: ICEvent statusCanceled).
	self assert: (stati includes: ICEvent statusConfirmed).
	self assert: (stati includes: ICEvent statusTentative).
	
	stati := ICToDo possibleStati asSet.
	self assert: stati size = 4.
	self assert: (stati includes: ICToDo statusCanceled).
	self assert: (stati includes: ICToDo statusNeedsAction).
	self assert: (stati includes: ICToDo statusInProcess).
	self assert: (stati includes: ICToDo statusCompleted).
	
	stati := ICJournal possibleStati asSet.
	self assert: stati size = 3.
	self assert: (stati includes: ICJournal statusCanceled).
	self assert: (stati includes: ICJournal statusDraft).
	self assert: (stati includes: ICJournal statusFinal).