## <center>Webinar Base2</center>

## <center>Simplificando Automação de API com Karate Framework</center>
<h3><center> Java + Karate Framework API </center></h3>

---------------------------------------------------
<h3> Características: </h3>

- Linguagem de desenvolvimento - Java

- Versão do Java - 8

- Ambiente de desenvolvimento - Intellij Community

- Orquestrador de testes - JUnit 5

- Gerenciamento de dependência - Maven

- Relatório de testes automatizados - Relatório nativo do Karate Framework

- Framework integração com API - Karate Framework


---------------------------------------------------
<h3> O que é Karate Framework: </h3>
Karate Framework é uma ferramenta open source para testes de API, mocks, performance e até mesmo interface.

Sua principal caracterísca está baseada na sua simplicidade de escrita. Onde pessoas sem grande conhecimento em linguagem 
ou lógica de programção conseguem desenvolver um script sem grandes dificuldades.

A sintaxe utilizada pelo Karate é semelhante ao Gherkin e os testes são implementados dentro de um arquivo .feature e 
executados por um Runner.

Apesar de ser baseado no Gherkin, os cenários descritos seguem uma abordagem mais imperativa, ou seja, descrevem como 
as requisições são feitas e não o que ela faz. Em outras palavras, a linguagem utilizada nas features acaba sendo muito 
mais técnica do que de negócio.

No projeto da Base2, estamos focando no Karate para testes de API.


---------------------------------------------------
<h3> API de teste: </h3>

API alvo de testes será a Serverest.

O ServeRest é uma API REST gratuita que simula uma loja virtual com intuito de servir de material de estudos de testes de API.

Essa API está disponível [online](https://serverest.dev/), localmente através do docker ou NPM. 

Este projeto foi desenvolvido exclusivamente para estudo da estrutura e funcionalidades do Karate Framework. 
Não estamos focando nas melhores práticas de estruturação de uma bateria de teste de regressão, como por exemplo,
testes independentes e desacoplados.