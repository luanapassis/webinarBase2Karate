Feature: Método get para listar usuarios cadastrados

  Background:
    * url url

  @smoke
  Scenario: Listar todos os usuarios cadastrados
    Given path '/usuarios'
    When method get
    Then status 200

  @regression
  Scenario: Listar usuario por nome
    Given path '/usuarios'
    And param nome = 'luana assis'
    When method get 
    Then status 200

  Scenario: Listar usuario por nome e email
    Given path '/usuarios'
    And params {nome:'luana assis', email:'luana@qa.com'}
    When method get
    Then status 200

  Scenario: Listar usuario por nome e email e validar o nome do usuario retornado
    Given path '/usuarios'
    And params {nome:'luana assis', email:'luana@qa.com'}
    When method get
    Then status 200
    And match response.usuarios[0].nome == 'luana assis'


  Scenario: Listar todos usuarios e verificar se algum e o usuario luana assis
    Given path '/usuarios'
    When method get
    Then status 200
    And match response.usuarios[*].nome contains 'luana assis'


  Scenario: Listar todos usuarios e verificar se existe fulado e luana
    Given path '/usuarios'
    When method get
    Then status 200
    And match response.usuarios[*].nome == ['Fulano da Silva', 'luana assis']


  Scenario: Listar todos usuarios e verificar se existe fulado e luana utilizando contains
    Given path '/usuarios'
    When method get
    Then status 200
    And match response.usuarios[*].nome contains ['luana assis','Fulano da Silva']


  Scenario: Verificar o conteudo do response
    Given path '/usuarios'
    When method get
    Then status 200
    And match response.quantidade != '#null'
    And match response.quantidade == '#number'

    
  Scenario: Validar algum retorno do header do response
    Given path '/usuarios'
    When method get
    Then status 200
    And match header content-type contains 'application/json'


  Scenario: Verificar response completo
    Given path '/usuarios'
    When method get
    Then status 200
    And match response contains
    """
     {
    "quantidade": 2,
    "usuarios": [
        {
            "nome": "Fulano da Silva",
            "email": "fulano@qa.com",
            "password": "teste",
            "administrador": "true",
            "_id": "0uxuPY0cbmQhpEz1"
        },
        {
            "nome": "luana assis",
            "email": "luana@qa.com",
            "password": "teste",
            "administrador": "true",
            "_id": "cZqQbDF6JrA9xCoW"
        }
    ]
}
   """



