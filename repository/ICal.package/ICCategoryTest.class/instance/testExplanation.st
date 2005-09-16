tests
testExplanation

    self assert: (calendar categoryWithTitle: 'family') explanation = 'for family events'.
    self assert: (calendar categoryWithTitle: 'tennis club') explanation = 'this category is for tennis club events'.
    self deny: category1 explanation = ''.