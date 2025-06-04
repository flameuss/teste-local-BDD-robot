*** Settings ***
Resource            ../main.robot

*** Variables ***
${URL}                    https://organo-teste.vercel.app/

*** Keywords ***
Dado que eu acesse o Organo
    Open Browser   url=${URL}  browser=Chrome

Fechar o Navegador
    Close Browser
     