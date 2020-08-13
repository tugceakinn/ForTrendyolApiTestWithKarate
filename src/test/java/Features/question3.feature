Feature: QUESTION-3

  Scenario: Verify that title and author are required fields cannot be empty.
    Given url 'https://url/api/books/'
    And request
    """
    {
    "id" : 2,
    "author" : "",
    "title" : ""
    }
    """
    When method put
    Then status 404
    * print response
    And match response
    """
    {"error": "Field 'author' and 'title' is cannot be empty."}
    """