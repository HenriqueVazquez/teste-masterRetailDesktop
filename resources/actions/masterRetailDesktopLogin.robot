*** Settings ***
Documentation       Login Master Retail Desktop

Library             SikuliLibrary


*** Keywords ***
Verificar se está na Tela Inicial
    Wait Until Screen Contain    mensagem-bem-vindo.png    15

Informar Usuario
    [Arguments]    ${usuario}

    Input Text    campo-usuario.png    ${usuario}

Informar Senha
    [Arguments]    ${senha}

    Input Text    campo-senha.png    ${senha}

Tentar Fazer Login Pelo Botão OK
    Click    botao-ok.png

Confirmar Mensagem Do Menu Inicial
    Wait Until Screen Contain    menu-login.png    30

