Feature: QUESTION-1
  Background:
    * url 'https://url/api/books'
  # 1. Verify that the API starts with an empty store.
  #   • At the beginning of a test case, there should be no books stored on the server.

  Scenario: Verify that the API starts with an empty store.
    Given url
    When method get
    Then status 200
    Then print response
    And match response ==
     """
     {}
     """