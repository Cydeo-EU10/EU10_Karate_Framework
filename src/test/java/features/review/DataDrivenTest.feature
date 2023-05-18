Feature: Data Driven Test

  Scenario Outline: simple printing
    * print '<name>'
    * print '<gender>'
    * print '<phone>'

    Examples:
      | name    | gender | phone      |
      | Mike    | Male   | 2135468795 |
      | Jessica | Female | 5824716932 |


  Scenario Outline: Data driven for search spartan
    Given url 'http://54.173.46.213:8000/api/spartans/'
    And path 'search'
    And param gender = '<gender>'
    And param nameContains = '<nameContains>'
    When method get
    Then status 200
    And print response

    Examples:
      | gender | nameContains |
      | Male   | va           |
      | Female | je           |