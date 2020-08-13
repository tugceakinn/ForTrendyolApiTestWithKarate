Feature: Requirements-3
  Background:
    * url 'https://localhost:8093'
    * header Accept = 'application/json'

    Scenario: Verify that title and author are required fields cannot be empty.
      Given path '/api/books'
      And request
      """
      {
      "id" : 2,
      "author" : " ",
      "title" : " "
      }
      """
      When method put
      Then status 404
      * print response
      And match response
      """
      {"error": "Field 'author' and 'title' is cannot be empty."}
      """