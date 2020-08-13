Feature: Requirements-1
  Background:
    * url 'https://localhost:8093'
    * header Accept = 'application/json'

    Scenario: Verify that the API starts with an empty store.
      Given path '/api/books'
      When method get
      Then status 200
      * print response
      And match response ==
       """
       { }
       """