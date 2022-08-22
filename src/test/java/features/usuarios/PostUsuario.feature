Feature: Método post para cadastrar usuarios

  Background:
    * url url

  Scenario: Cadastrar usuario com sucesso com body no corpo do teste

    * def body =
    """
    {
      "nome": "teste usuario",
      "email": "testeusuario@qa.com.br",
      "password": "teste",
      "administrador": "true"
    }

    """

    Given path '/usuarios'
    And request body
    When method post
    Then status 201
    And match response.message ==  "Cadastro realizado com sucesso"


  Scenario: Cadastrar usuario com sucesso com body em arquivo
    * def now = function(){ return java.lang.System.currentTimeMillis() }

    * def body = read('classpath:/jsons/usuario.json')
    * set body.nome = 'maria '
    * set body.email = 'maria'+now()+'@a.com.br'
    * set body.password = '123456'
    * set body.administrador = 'false'

    Given path '/usuarios'
    And request body
    When method post
    Then status 201
    And match response.message ==  'Cadastro realizado com sucesso'


