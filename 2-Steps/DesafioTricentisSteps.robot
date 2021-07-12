*** Settings ***
Resource            ../5-Config/Config.robot
Resource            ../3-Page/DesafioTricentisPage.robot

*** Keywords ***
Dado que acessei o site Tricents
    Sleep                                   3
    Wait Until Element Is Visible           ${ValidaTelaInicial}

Quando preencho as informações diponiveis na tela "${make}", "${model}", "${cylinder}", "${kws}", "${date}", "${number}", "${boolean}", "${fuel}", "${payload}", "${weight}", "${price}", "${plate}" e "${mileage}"
    Verifica Se ComboBox Esta Na Tela       ${MakeComboBx}                  ${make}
    # Seleciona Item Combo Box                ${MakeComboBx}                  ${make}
    Verifica Se ComboBox Esta Na Tela       ${ModelComboBx}                 ${model}
    # Seleciona Item Combo Box                ${ModelComboBx}                 ${model}
    Verifica Se Input Esta Na Tela          ${CylinderInput}                ${cylinder}
    # Preenche Text                           ${CylinderInput}                ${cylinder}
    Verifica Se Input Esta Na Tela          ${EnginerInput}                 ${kws}
    # Preenche Text                           ${EnginerInput}                 ${kws}
    Verifica Se Input Esta Na Tela          ${DataManufactureInput}         ${date}
    # Preenche Text                           ${DataManufactureInput}         ${date}
    Verifica Se ComboBox Esta Na Tela       ${NumSeats1ComboBx}             ${number}
    # Seleciona Item Combo Box                ${NumSeats1ComboBx}             ${number}
    Click No Item                           ${RightDriverRadioFix}
    Verifica Se ComboBox Esta Na Tela       ${NumSeats2ComboBx}             ${number}
    Verifica Se ComboBox Esta Na Tela       ${FuelTypeComboBx}              ${fuel}
    Verifica Se Input Esta Na Tela          ${PayloadInput}                 ${payload}              
    Verifica Se Input Esta Na Tela          ${TotalWeightInput}             ${weight}
    Verifica Se Input Esta Na Tela          ${ListPriceInput}               ${price}
    Verifica Se Input Esta Na Tela          ${LicensePlaterInput}           ${plate}
    Verifica Se Input Esta Na Tela          ${AnnualMileageInput}           ${mileage}

Então dou click em Next e valido que preencheu a primeira tela e mudou de tela com sucesso        
    Click No Item                           ${NextBtn}
    Sleep                                   3
    Wait Until Element Is Visible           ${ValidarItemNaTela}            120        