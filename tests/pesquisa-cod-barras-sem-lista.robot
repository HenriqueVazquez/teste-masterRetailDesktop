*** Settings ***
Documentation       Suite de teste de login Master Retail Desktop

Resource            ${EXECDIR}/resources/base.robot

Suite Setup         Inicia Sessão
Suite Teardown      Finaliza Teste


*** Test Cases ***
Realizar consulta de código de barras sem lista
    Pesquisar Funcionalidade
    Acessar Consulta De Codigo De Barra
    Selecionar Loja    9901
    Selecionar Produto    1000111
    Selecionar Local de estoque
    Realizar consulta
    Mensagem de erro de consulta sem lista
    Fechar mensagem de erro
    Voltar menu inicial

    [Teardown]    Finaliza Teste

