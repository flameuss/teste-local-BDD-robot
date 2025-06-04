*** Settings ***

Resource            ../resources/main.robot
Test Setup        	Dado que eu acesse o Organo
Test Teardown       Fechar o Navegador


*** Test Cases ***
Verificar se ao preencher os campos do formulário corretamente os dados são inseridos na lista e se um novo card é criado no time esperado
    Dado que preencha os campos do formulário
    E clique no botão criar card
    Então Identificar o card dentro do time esperado
    Capture Page Screenshot    name=card_criado.png

Verificar se é possivel criar mais um card se preenchermos os campos do formulário corretamente
    Dado que preencha os campos do formulário
    E clique no botão criar card
    Então Identificar 3 cards no time esperado
    Capture Page Screenshot    name=cards_criados.png

Verificar se é possivel criar um card para cada time disponivel se preenchermos os campos corretamente
    Dado que preencha os campos do formulário
    Então criar e identificar um card em cada time disponivel
    Então Identificar o card dentro do time esperado
    Capture Page Screenshot    name=card_multiplos_times.png


