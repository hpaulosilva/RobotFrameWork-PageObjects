*** Settings ***
Library    SeleniumLibrary
Test Setup    Start Test
Test Teardown    Finish Test

Resource    ../pages/commons/hooks.pages.commons.robot
Resource    ../pages/HomePage.robot
Resource    ../pages/IphonePage.robot



*** Test Cases ***

Caso de teste 1 Acessando a home
    Dado que acesso a home do site www.fastshop.com.br
    Quando clico em 'aproveite ja'
    Então vejo o menu 'categoria'


Caso de teste 2 buscando um produto
    Dado que acesso a home do site www.fastshop.com.br
    Quando pesquiso por 'Iphone'
    Então vejo o nome do produto escolhido 'iPhone 13 Apple (128GB) Meia-noite, Tela de 6,1", 5G e Câmera Dupla de 12 MP'

