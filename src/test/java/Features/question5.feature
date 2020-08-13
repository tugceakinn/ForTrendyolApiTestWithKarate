Feature: Requirements-5
  Background:
    * url 'https://localhost:8093'
    * header Accept = 'application/json'

    Scenario: Verify that you can create a new book via PUT

      Given path '/api/books'
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
      #get ile oluşturduğumuz kitabın gelmesi için istekte bulunduk
      #bu sorgunun response unu da second diye bir değişkene atadık
      Then assert first == second
      # assert ile karşılaştırma yaptık
      # first değişkenindeki response ile (oluşturduğumuz kitap) second değişkenine atadığımız response u karşılaştırdık
