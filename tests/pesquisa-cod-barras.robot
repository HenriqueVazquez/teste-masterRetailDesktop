* Settings *
Documentation       Suite de teste de login Master Retail Desktop 

Resource        ${EXECDIR}/resources/codBarras.robot

Suite Setup     Inicia Sessão
Suite Teardown  Encerrar Sessão

* Test Cases *
Realizar consulta de código de barras
    Pesquisar Funcionalidade
    Acessar Consulta De Codigo De Barra
    Selecionar Loja       9901
    Selecionar Produto    1000111
    Selecionar Local de estoque
    Selecionar Lista de Preco
    Realizar consulta 
    
    

    [Teardown]      Finaliza Teste
    
