* Settings *
Documentation       Suite de teste de login Master Retail Desktop 

Resource        ${EXECDIR}/resources/base.robot

Suite Setup     Inicia Sessão
Suite Teardown  Encerrar Sessão

* Test Cases *
Logar no melhor sistema de controle de estoque
    Verificar se está na Tela Inicial
    Informar Usuario                desenv
    Informar Senha                  1
    Tentar Fazer Login Pelo Botão OK
    Confirmar Mensagem Do Menu Inicial
    

    [Teardown]      Finaliza Teste
    
