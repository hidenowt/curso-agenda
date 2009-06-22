Funcionalidade: Gerenciar Contatos
  Como um usuário
  Eu quero gerenciar contatos
  Para contatar as pessoas mais facilmente

  Contexto:
    Dado que existem os seguintes registros de contato:
      | nome               | email                        |
      | Contato de Teste 1 | contatoteste1@exemplo.com.br |
      | Contato de Teste 2 | contatoteste2@exemplo.com.br |
      | Contato de Teste 3 | contatoteste3@exemplo.com.br |

  Cenário: Adicionar um contato válido
    Dado que estou em cadastro de contato
    E defino nome como "Fulano de Tal"
    E defino e-mail como "fulano@exemplo.com.br"
    E defino telefone como "(88) 3581 0000"
    E defino celular como "(88) 3581 0000"
    E defino endereço como "Rua Sicrano, 00"
    Quando peço para salvar
    Então preciso ver "Registro adicionado com sucesso."
    E preciso ver "Encontrado(s) 4 registro(s)."
    E preciso ver os seguintes registros:
      | nome               | email                        |
      | Contato de Teste 1 | contatoteste1@exemplo.com.br |
      | Contato de Teste 2 | contatoteste2@exemplo.com.br |
      | Contato de Teste 3 | contatoteste3@exemplo.com.br |
      | Fulano de Tal      | fulano@exemplo.com.br        |

  Cenário: Alterar contato
    Dado que estou em listagem de contatos
    E peço a alteração do contato que o(a) email é "contatoteste1@exemplo.com.br"
    E defino nome como "Contato Alterado"
    E defino e-mail como "emailalterado@exemplo.com.br"
    Quando peço para salvar
    Então preciso ver "Registro alterado com sucesso."
    E preciso ver os seguintes registros:
      | nome               | email                        |
      | Contato Alterado   | emailalterado@exemplo.com.br |
      | Contato de Teste 2 | contatoteste2@exemplo.com.br |
      | Contato de Teste 3 | contatoteste3@exemplo.com.br |

  Cenário: Listar contatos
    Quando eu estiver em listagem de contatos
    Então preciso ver "Encontrado(s) 3 registro(s)."
    E preciso ver os seguintes registros:
      | nome               | email                        |
      | Contato de Teste 1 | contatoteste1@exemplo.com.br |
      | Contato de Teste 2 | contatoteste2@exemplo.com.br |
      | Contato de Teste 3 | contatoteste3@exemplo.com.br |

  Cenário: Remover usuário
    Dado que estou em listagem de contatos
    Quando peço a exclusão do contato que o(a) nome é "Contato de Teste 1"
    Então preciso ver "Registro excluído com sucesso."
    E preciso ver "Encontrado(s) 2 registro(s)."
    E preciso ver os seguintes registros:
      | nome               | email                        |
      | Contato de Teste 2 | contatoteste2@exemplo.com.br |
      | Contato de Teste 3 | contatoteste3@exemplo.com.br |
    E não devo ver os seguintes registros:
      | nome               | email                        |
      | Contato de Teste 1 | contatoteste1@exemplo.com.br |

