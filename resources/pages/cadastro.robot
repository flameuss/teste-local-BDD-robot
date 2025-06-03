*** Settings ***
Resource            ../main.robot

*** Variables ***

${CAMPO_NOME}             id:form-nome
${CAMPO_CARGO}            id:form-cargo
${CAMPO_IMAGEM}           id:form-imagem
${CAMPO_TIME}             class:lista-suspensa
${BOTAO_CARD}             id:form-botao
@{selecionar_times}    
...    //option[contains(.,'Front-End')]
...    //option[contains(.,'Programação')]
...    //option[contains(.,'Data Science')]
...    //option[contains(.,'Devops')] 
...    //option[contains(.,'UX e Design')]
...    //option[contains(.,'Mobile')]
...    //option[contains(.,'Inovação e Gestão')]

*** Keywords ***
Dado que preencha os campos do formulário
    ${Nome}                   FakerLibrary.First Name
    ${Imagem}                 FakerLibrary.Image URL     width=100     height=100
    ${Cargo}                  FakerLibrary.Job
    Input Text         ${CAMPO_NOME}       ${Nome}
    Input Text         ${CAMPO_CARGO}      ${Cargo}
    Input Text         ${CAMPO_IMAGEM}     ${Imagem}
    Click Element      ${CAMPO_TIME}
    Click Element      ${selecionar_times}[1]   
E clique no botão criar card
    Click Element      ${BOTAO_CARD}
    
Então Identificar o card dentro do time esperado
    Element Should Be Visible    class:colaborador

Então Identificar 3 cards no time esperado
    FOR    ${i}    IN RANGE    1    3
        Dado que preencha os campos do formulário
        E clique no botão criar card
    END
    Sleep  10s

Então criar e identificar um card em cada time disponivel
    FOR    ${iindice}    ${time}    IN ENUMERATE    @{selecionar_times}
        Dado que preencha os campos do formulário
        Click Element      ${time}
        E clique no botão criar card
        
    END
    Sleep  10s


Dado que eu clique no botão criar card
    Click Element    ${BOTAO_CARD}   
Então o sistema deve apresentar mensagem de campo obrigatório
    Element Should Be Visible  id:form-nome-erro
    Element Should Be Visible  id:form-cargo-erro
    Element Should Be Visible  id:form-times-erro




