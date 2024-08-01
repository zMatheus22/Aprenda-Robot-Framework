*** Settings ***
Library    SeleniumLibrary

*** Variables ***
# Dados do teste
${Nome_Musica}        Silent Child - F**k You (Lyric Video)

# Variáveis de configuração
${URL}                https://www.youtube.com
${Browser}            firefox

# Elementos do site
${Input_Pesquisa}     //input[@id="search"]
${Button_Pesquisa}    //button[@id="search-icon-legacy"]
${Primeiro_Video}     (//*[@id="video-title"]/yt-formatted-string)[1]

# Verificação do teste
${Prova}              //div[@id="top-level-buttons-computed"]/yt-button-view-model/button-view-model/button/div[2]

*** Keywords ***
Dado que eu acesso o site YouTube
    Open Browser                     ${URL}               ${Browser}

Quando digito o nome da música
    Input Text                       ${Input_Pesquisa}    ${Nome_Musica}

E clico no botão buscar
    Click Button                     ${Button_Pesquisa}

E clico na primeira opção da lista
    Wait Until Element Is Visible    ${Primeiro_Video}
    Click Element                    ${Primeiro_Video}

Então o vídeo é executado
    Wait Until Element Is Visible    ${Prova}
    Element Should Be Visible        ${Prova}
    Sleep    1s
    Fechar navegador

Fechar navegador
    Close Browser

*** Test Cases ***
Cenário 01: Executar video no site do YouTube
    Dado que eu acesso o site YouTube
    Quando digito o nome da música
    E clico no botão buscar
    E clico na primeira opção da lista
    Então o vídeo é executado
