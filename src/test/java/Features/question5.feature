Feature: QUESTION-5

  Scenario: Verify that you can create a new book via PUT

    Given url 'https://url/api/books/'
    And request
    """
     "id" : 3,
     "author" : "Zülfü Livaneli",
     "title"  : "Seranad"
    """
    When method put
    Then status 200
    Then print response
    * def first = response
    #put ile yeni bir kitap oluşturduk
    #response u first diye bir değişkene attık

    Given url 'https://url/api/books/3'
    When method get
    Then status 200
    Then print response
    * def second = response

    Then assert first == second