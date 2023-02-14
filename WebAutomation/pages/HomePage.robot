*** Settings ***
Library      SeleniumLibrary
Resource     ../config/config.robot

*** Keywords ***
Dado que acesso a home do site www.fastshop.com.br
    Go To    url=${BASE_URL}
    
Quando clico em 'aproveite ja'
    Click Element    locator=//a[@class='button-link'][contains(.,'APROVEITE JÁ')]

Então vejo o menu 'categoria'
    Wait Until Element Is Visible    locator=//span[contains(.,'Categorias')]

Quando pesquiso por '${PRODUTO}'
    Input Text       locator=(//input[@id='search-box-id'])[1]    text=${PRODUTO}
    Click Element    locator=//div[@class='detail'][contains(.,'iPhone 13 Apple (128GB) Meia-noite, Tela de 6,1", 5G e Câmera Dupla de 12 MP R$ 4.899,00')]