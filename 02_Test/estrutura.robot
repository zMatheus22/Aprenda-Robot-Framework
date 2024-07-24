*** Settings ***
# Bibliotecas que você usará
Library        SeleniumLibrary

*** Variables ***
# Onde você irá declarar variáveis
# ${NOME DA VARIÁVEL}    VALOR DA VARIÁVEL
${nome}     Matheus                

*** Keywords ***
# Onde você irá escrever pequenos scripts/comandos
abrir site google
    Open Browser        https://www.google.com.br    chrome

abrir site youtube
    Open Browser        https://www.youtube.com    chrome

fechar navegador
    Close Browser

*** Test Cases ***
# Onde estarão os testes escritos
Cenário 01: Teste de abrir site YouTube
    abrir site youtube
    fechar navegador

Cenário 02: Teste de abrir site Google
    abrir site google
    fechar navegador
