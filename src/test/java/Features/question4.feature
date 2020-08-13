Feature: QUESTION-4

  Scenario:  Verify that the id field is read−only.
    Given url 'https://url/api/books/2'
    * def request = read('books.json')
    * set request.author = 'Mark'
    * set request.id = '5'
    Given request request
    When method put
    Then status 200
    Then print response
