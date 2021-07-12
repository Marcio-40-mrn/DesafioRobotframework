*** Settings ***
Library             SeleniumLibrary
Library             AutoRecorder
Resource            ../3-Page/DesafioTricentisPage.robot
Resource            ../2-Steps/DesafioTricentisSteps.robot


*** Variables ***
${BROWSER}      chrome
${URL}          http://sampleapp.tricentis.com/101/app.php


*** Keywords ***
Abrir navegador
    Open Browser                    ${URL}           ${BROWSER}
    Maximize Browser Window
    Capture Page Screenshot


Fechar navegador
    Capture Page Screenshot
    Close Browser


Seleciona Item Combo Box
    [Arguments]                         ${combobox}         ${itemcombobox}
    Sleep                               3
    Wait Until Element Is Visible       ${combobox}         120
    Click Element                       ${combobox}
    ${Item}                             Set Variable        ${combobox}//option[@value='${itemcombobox}']
    Wait Until Element Is Visible       ${Item}             120
    Click Element                       ${Item}


Preenche Text
    [Arguments]                         ${input}            ${Text}
    Sleep                               3
    Wait Until Element Is Visible       ${input}            120
    Input Text                          ${input}            ${Text}


Click No Item
    [Arguments]                         ${item}
    Sleep                               3
    Wait Until Element Is Visible       ${item}             120
    Click Element                       ${item}


Olha se Existe
    [Arguments]         ${element}
    Wait Until Element Is Visible       ${element}       60


Verifica Se ComboBox Esta Na Tela
    [Arguments]             ${pageObject}                        ${opção}
    ${Status}           Run Keyword And Return Status           Olha se Existe        ${pageObject}          
    Log     ${Status}
    IF          '${Status}' == 'True'
        Seleciona Item Combo Box    ${pageObject}   ${opção}
    END


Verifica Se Input Esta Na Tela
    [Arguments]             ${pageObject}                        ${opção}
    ${Status}           Run Keyword And Return Status           Olha se Existe        ${pageObject}
    Log     ${Status}
    IF          '${Status}' == 'True'
        Preenche Text    ${pageObject}   ${opção}
    END


