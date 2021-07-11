*** Settings ***
Resource            ../5-Config/Config.robot
Resource            ../3-Page/DesafioTricentisPage.robot
Resource            ../2-Steps/DesafioTricentisSteps.robot



Test Setup          Abrir navegador
Test Teardown       Fechar navegador


*** Test Case ***

# robot -t "CT01:Preencher Primeira Tela" -d ./4-Relatórios/CT01 "1-Tests\TestDesafioTricentis.robot"
CT01:Preencher Primeira Tela
    Dado que acessei o site Tricents
    Quando preencho as informações diponiveis na tela "Honda", "Motorcycle", "1000", "142", "07/10/2000", "2", "No", "Gas", "175", "190", "62000", "FSI 3013" e "5000"
    Então dou click em Next e valido que preencheu a primeira tela e mudou de tela com sucesso