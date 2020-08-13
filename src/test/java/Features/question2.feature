Feature: Requirements-2
    Background:
        * url 'https://localhost:8093'
        * header Accept = 'application/json'

        Scenario: Verify that title and author are required fields.
        Given path '/api/books'
        And request
        """
        {
        "id" : 5
        }
        """
        When method put
        Then status 404
        And match response
        """
        {"error": "Field 'author' and 'title' is required"}
        """