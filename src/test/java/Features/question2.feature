Feature: QUESTION-2

  #  2.Verify that title and author are required fields.
  #    • PUT on /api/books/ should return an error Field '<field_name>' is required.

    Scenario: Verify that title and author are required fields.
    Given url 'https://..../api/books/'
    And request
    """
    {
    "id" : 2
    }
    """
    When method put
    Then status 404
    Then print response
    And match response
    """
    {"error": "Field 'author' and 'title' is required"}
    """