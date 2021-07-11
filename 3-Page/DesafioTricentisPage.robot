*** Settings ***
Resource            ../5-Config/Config.robot
Resource            ../2-Steps/DesafioTricentisSteps.robot


*** Variable ***
${ValidaTelaInicial}                        xpath=//img[@id='tricentis_logo']
${MakeComboBx}                              xpath=//select[@id='make']
${ModelComboBx}                             xpath=//select[@id='model']
${CylinderInput}                            xpath=//input[@id='cylindercapacity']
${EnginerInput}                             xpath=//input[@id='engineperformance']
${DataManufactureInput}                     xpath=//input[@id='dateofmanufacture']
${NumSeats1ComboBx}                         xpath=//select[@id='numberofseats']
${NumSeats2ComboBx}                         xpath=//select[@id='numberofseatsmotorcycle']
${RightDriverRadio}                         xpath=//p[@class='group']
${RightDriverRadioFix}                      xpath=//p[@class='group']//input[@id='righthanddriveno']
${FuelTypeComboBx}                          xpath=//select[@id='fuel']
${PayloadInput}                             xpath=//input[@id='payload']
${TotalWeightInput}                         xpath=//input[@id='totalweight']
${ListPriceInput}                           xpath=//input[@id='listprice']
${LicensePlaterInput}                       xpath=//input[@id='licenseplatenumber']
${AnnualMileageInput}                       xpath=//input[@id='annualmileage']
${NextBtn}                                  xpath=//button[@id='nextenterinsurantdata']
${ValidarItemNaTela}                        xpath=//input[@id='firstname']

