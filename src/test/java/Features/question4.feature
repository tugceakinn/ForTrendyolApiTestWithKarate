Feature: Requirements-4
  Background:
    * url 'https://localhost:8093'
    * header Accept = 'application/json'

    Scenario:  Verify that the id field is read−only.
      Given path '/api/books/2'

      * def request = read('books.json')
      * set request.id = '1'
      * set request.author = 'Mark'
      Given request request
      When method put
      Then status 200
      Then print response

      #Bu requestte id'nin read-only olduğu görülür
      #id ile yeni bir kitap oluşturulamadığı görülür.
