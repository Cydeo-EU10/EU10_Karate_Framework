Feature: API Test

  Background:
    Given url 'http://54.173.46.213:8000'


  Scenario: status code test
    Given url 'http://54.173.46.213:8000/api/spartans'
    When method GET
    Then status 200
    And match header Content-Type == 'application/json'


  Scenario: single spartan validation
    Given path '/api/spartans/5'
    When method GET
    Then match response.id == 5
    And match response.name == "Blythe"
    And print response


  Scenario: search method
    Given path '/api/spartans/search'
    And param gender = 'Male'
    And param nameContains = 'Va'
    When method GET
    Then status 200
    And print response