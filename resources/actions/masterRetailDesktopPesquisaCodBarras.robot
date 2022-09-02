*** Settings ***
Documentation       Pesquisa código de barras Master Retail Desktop

Library             SikuliLibrary


*** Keywords ***
Pesquisar Funcionalidade
    Wait Until Screen Contain    campo-pesquisa.png    30
    Click    campo-pesquisa.png
    Input Text    campo-pesquisa.png    barr

Acessar Consulta De Codigo De Barra
    Click    bt-cosulta-cod-barras.png

Selecionar Loja
    [Arguments]    ${loja}
    Input Text    campo-loja.png    ${loja}
    Press Special Key    TAB

Selecionar Produto
    [Arguments]    ${produto}
    Input Text    campo-produto.png    ${produto}
    Press Special Key    TAB

Selecionar Local de estoque
    Click    campo-local.png
    Click    selecionar-local.png

Selecionar Lista de Preco
    Click    campo-lista.png
    Click    selecionar-lista.png

Realizar consulta
    Click    realizar-consulta.png

Confirmar que consulta finalizou
    Wait Until Screen Contain    consulta-realizada.png    15

Mensagem de erro de consulta sem lista
    Confirmar que consulta finalizou
    Screen Should Contain    Erro-consulta-sem-lista.png

Fechar mensagem de erro
    Click    fechar-modal.png

Voltar menu inicial
    Click    voltar-menu.png

