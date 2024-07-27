*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${input_name}             id:firstName
${input_last_name}        id:lastName
${input_email}            id:userEmail
${radio_gender_male}      xpath=//label[@for="gender-radio-1"]
${radio_gender_female}    xpath=//label[@for="gender-radio-2"]
${radio_gender_other}     xpath=//label[@for="gender-radio-3"]
${input_phone}            id:userNumber
${input_birth}            id:dateOfBirthInput
${input_subject}          id:subjectsInput
${checkbox_sports}        xpath=//label[@for="hobbies-checkbox-1"]
${checkbox_reading}       xpath=//label[@for="hobbies-checkbox-2"]
${checkbox_music}         xpath=//label[@for="hobbies-checkbox-3"]
${input_upload}           id:uploadPicture
${textarea_address}       id:currentAddress
${selected_state}         id:react-select-3-input
${selected_city}          id:react-select-4-input
${button_submit}          id:submit

*** Keywords ***
Tela cheia navegador
    Maximize Browser Window
Rolar Para Baixo 
    Execute JavaScript    window.scrollBy(0, 500)

Abrir navegador e acessar site
    Open Browser    https://demoqa.com/automation-practice-form    Edge
    Tela cheia navegador
    Rolar Para Baixo  

Preencher formulário
    Input Text        ${input_name}         Matheus
    Input Text        ${input_last_name}    Strada
    Input Text        ${input_email}        matheus@gmail.com
    Click Element     ${radio_gender_male}
    Input Text        ${input_phone}        (12) 9 1233-223
    Input Text        ${input_birth}        10 11 2002
    Press Key         ${input_birth}        \\13    # Pressiona a tecla Enter
    Input Text        ${input_subject}      Teste de Software com Robot
    Click Element     ${checkbox_sports}
    Click Element     ${checkbox_music}
    Input Text        ${selected_state}     Haryana
    Press Key         ${selected_state}     \\13    # Pressiona a tecla Enter
    Press Key         ${selected_state}     \\9     # Pressiona a tecla Tab
    Input Text        ${selected_city}      Karnal
    Press Key         ${selected_city}      \\13    # Pressiona a tecla Enter
 
Enviar o formulário
    Click Element     ${button_submit}

Fechar navegador
    Close Browser   

*** Test Cases ***
Cenário 01: Preencher formulário
    Abrir navegador e acessar site
    Preencher formulário
    Enviar o formulário
    Fechar navegador
