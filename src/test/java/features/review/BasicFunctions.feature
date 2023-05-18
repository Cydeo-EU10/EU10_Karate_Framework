Feature: Basic Functions


  Scenario: basic
    Given print "Cydeo"
    And print 10
    And print 8+9
    And print 6*3
    When print 'EU10 ','Karate Revie Class'
    * print 'Last review class'

  Scenario: define varibles
    * def a = 7
    * print a
    * def day = 18
    * def month = 'May'
    * print 'Today is ',month,' ',day

  Scenario: def again
    * def spartan1 = {"id":2,"name":'Jerry'}
    * print spartan1
    * print spartan1.id
    * print spartan1.name


