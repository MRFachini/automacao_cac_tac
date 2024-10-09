Feature: Formulário de contato

  Scenario: Enviar formulário com todos os campos preenchidos corretamente
    Given que o usuário está na página do formulário de contato
    When ele preenche os campos obrigatórios corretamente
    And seleciona um produto
    And escolhe o tipo de atendimento como "Ajuda"
    And seleciona "E-mail" como meio de contato preferencial
    And anexa um arquivo
    And clica em "Enviar"
    Then ele vê uma mensagem de sucesso

  Scenario: Enviar formulário sem preencher campos obrigatórios
    Given que o usuário está na página do formulário de contato
    When ele deixa os campos obrigatórios em branco
    And clica em "Enviar"
    Then ele vê uma mensagem de erro para os campos obrigatórios