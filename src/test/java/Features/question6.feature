Feature: Requirements-6
  Background:
    * url 'https://localhost:8093'
    * header Accept = 'application/json'

    Scenario: Verify that you cannot create a duplicate book.
      Given path '/api/books'
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
      * print response
      And match response
      """
      {"error": "Another book with similar title and author already exists."}
      """

      #Bu istekte daha önce oluşturduğumuz yazar ve kitap adını tekrar oluşturmaya çalıştık. Ve hata aldık.
