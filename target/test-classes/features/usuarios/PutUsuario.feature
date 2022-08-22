Feature: Método put para editar usuarios

  Background:
    * url url

  Scenario: Alterar um usuario com sucesso

    * def body =
    """
    {
      "nome": "luana assis 2",
      "email": "luana@qa.com.br",
      "password": "teste",
      "administrador": "false"
    }

    """

    Given path '/usuarios/cZqQbDF6JrA9xCoW'
    And request body
    When method put
    Then status 200
    And match response.message ==  "Registro alterado com sucesso"