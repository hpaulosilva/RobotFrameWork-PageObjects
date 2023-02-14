*** Settings ***
Resource     ../config/config.robot
Library      SeleniumLibrary

*** Keywords ***
Então vejo o nome do produto escolhido '${PRODUTO_ESCOLHIDO}'
    Wait Until Element Is Visible    locator=//h1[@class='title skeleton-box-empty']