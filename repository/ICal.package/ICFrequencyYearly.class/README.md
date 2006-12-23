This class is mostly finished.  A lot had to be overridden here due to weekly numbers.  This class still does not handle week 53, which means there are 7 days that get lost for each year with weeknumbers.  

Also note, allDaysOf:inYearOf: may need to take weekst into account since it may be possible based on the weekst day that the first 6 days of the year don't count and change the calculations.

It may also be worth overriding byDayFor: directly so that the big collect, select, collect, etc. section only has to be done once per month, instead of once per day like now.  But I don't know how much of a hit this is really going to be.  But something to look at later.