*** Settings ***
Resource          ../pages/formTest.robot

*** Test Cases ***
Enviar Formulário Com Sucesso
    Abrir Página do Formulário
    Preencher Campos Obrigatórios
    Selecionar Produto
    Escolher Tipo de Atendimento Como Ajuda
    Selecionar Meio de Contato Preferencial Como E-mail
    Anexar Arquivo
    Clicar em Enviar

Enviar Formulário Sem Preencher Campos Obrigatórios
    Abrir Página do Formulário
    Clicar em Enviar