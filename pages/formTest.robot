*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}                          https://cac-tat.s3.eu-central-1.amazonaws.com/index.html
${NOME_INPUT}                   id=firstName
${SOBRENOME_INPUT}              id=lastName
${EMAIL_INPUT}                  id=email
${TELEFONE_INPUT}               id=phone
${PRODUTO_DROPDOWN}             xpath=//*[@id="product"]
${TIPO_ATENDIMENTO_AJUDA}       xpath=//input[@value='ajuda']
${TIPO_ATENDIMENTO_ELOGIO}      xpath=//input[@value='elogio']
${TIPO_ATENDIMENTO_FEEDBACK}    xpath=//input[@value='feedback']
${CONTATO_EMAIL}                xpath=//input[@value='email']
${CONTATO_TELEFONE}             xpath=//input[@value='telefone']
${MENSAGEM_TEXTO}               xpath=//textarea[@id='open-text-area']
${ANEXO_INPUT}                  xpath=//input[@type='file']
${BOTAO_ENVIAR}                 xpath=//button[@type='submit']
${CAMINHO_ANEXO}                C:/Users/Matheus/automacao_cac_tac/exemplo.txt

*** Keywords ***
Abrir Página do Formulário
    Open Browser    ${URL}    chrome
    Maximize Browser Window

Preencher Campos Obrigatórios
    Input Text    ${NOME_INPUT}    Nome Exemplo
    Input Text    ${SOBRENOME_INPUT}    Sobrenome Exemplo
    Input Text    ${EMAIL_INPUT}    exemplo@email.com

Selecionar Produto
    Select From List By Value    ${PRODUTO_DROPDOWN}    cursos

Escolher Tipo de Atendimento Como Ajuda
    Click Element    ${TIPO_ATENDIMENTO_AJUDA}

Selecionar Meio de Contato Preferencial Como E-mail
    Click Element    ${CONTATO_EMAIL}

Anexar Arquivo
    Choose File    ${ANEXO_INPUT}    ${CAMINHO_ANEXO}

Clicar em Enviar
    Click Button    ${BOTAO_ENVIAR}