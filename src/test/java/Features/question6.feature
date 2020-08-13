Feature: QUESTION-6

  Scenario: Verify that you cannot create a duplicate book.
    Given url 'https://url/api/books/'
    And request
    """
    {
    "id" : 3,
    "author" : "Zülfü Livaneli",
    "title" : "Seranad"
    }
    """
    When method put
    Then status 400
    Then print response
    And match response
    """
    {"error": "Another book with similar title and author already exists."}
    """