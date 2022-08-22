Feature: Método delete para deletar usuarios

  Background:
    * url url


  Scenario: Deletar um usuario com sucesso
    * def id = call read('DeleteUsuario.feature@cadastrar')
    Given path '/usuarios/'+id.usuarioId
    When method delete
    Then status 200
    And match response.message ==  "Registro excluído com sucesso"


  @ignore
  @cadastrar
  Scenario: Cadastra para deletar
    * def now = function(){ return java.lang.System.currentTimeMillis() }
    * def email = 'Test_' + now() + '@a.com.br'
    * print email
    * def body =
    """
           {
                "nome": "Maria da Silva",
                "email": #(email),
                "password": "teste",
                "administrador": "true"
           }
        """
    Given path '/usuarios'
    And request body
    When method post
    Then status 201
    * def usuarioId = response._id