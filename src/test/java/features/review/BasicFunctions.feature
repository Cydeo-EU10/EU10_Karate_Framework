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


  Scenario: more def objects
    Given def spartan =
      """
       {
    "content": [
        {
            "id": 25,
            "name": "Valentin",
            "gender": "Male",
            "phone": 1536037088
        },
        {
            "id": 944,
            "name": "Vallie",
            "gender": "Male",
            "phone": 9516284951
        }
    ],
    "totalElement": 2
}
      """
    * print spartan.content[0].name
    * print spartan.content[1].phone
    * print spartan.totalElement


  Scenario: assert
    * match 2 == 2
#    * match "house" == "house"   // check this one
    Given def name1 = 'Cydeo'
    Given def name2 = 'Cydeo'
    Then match name1 == name2


    Scenario: match contains
      Given def spartan =
      """
       {
    "content": [
        {
            "id": 25,
            "name": "Valentin",
            "gender": "Male",
            "phone": 1536037088
        },
        {
            "id": 944,
            "name": "Vallie",
            "gender": "Male",
            "phone": 9516284951
        }
    ],
    "totalElement": 2
}
      """
      * match spartan.content contains {'id':944, 'name':'Vallie','gender':'Male','phone':9516284951}







