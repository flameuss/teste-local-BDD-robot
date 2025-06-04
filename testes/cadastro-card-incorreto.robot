*** Settings ***
Resource            ../resources/main.robot
Test Setup        	Dado que eu acesse o Organo
Test Teardown       Fechar o Navegador

*** Test Cases ***

Verificar se quando o campo obrigatório não for preenchido corretamente o sistema exibe uma mensagem de campo obrigatório
    Dado que eu clique no botão criar card
    Então o sistema deve apresentar mensagem de campo obrigatório
    Capture Page Screenshot    name=card_campo_obrigatorio.png
