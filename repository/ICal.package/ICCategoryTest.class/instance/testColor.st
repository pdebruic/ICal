tests
testColor
  
   self assert: (calendar categoryWithTitle: 'family') hasColor.
   self assert: (calendar categoryWithTitle: 'tennis club') color = 'red'.
   
   category1 color: 'purple'.
   category2 color: 'yellow'.

   self assert: (calendar categoryWithTitle: 'family') hasColor.
   self deny: (calendar categoryWithTitle: 'tennis club') color = 'red'.