Funcionalidade: Gerenciar Eventos
  Como um usuário
  Eu quero gerenciar eventos
  Para avisar as pessoas sobre os eventos

  Contexto:
    Dado que existem os seguintes registros de evento:
      | titulo            |
      | Evento de Teste 1 |
      | Evento de Teste 2 |
      | Evento de Teste 3 |

  Cenário: Adicionar um evento válido
    Dado que estou em cadastro de evento
    E defino título como "Evento de Teste"
    E defino descrição como "Descrição de Teste"
    E seleciono "2009-06-21" como data e hora
    Quando peço para salvar
    Então preciso ver "Registro adicionado com sucesso."
    E preciso ver "Encontrado(s) 4 registro(s)."
    E preciso ver os seguintes registros:
      | titulo            |
      | Evento de Teste 1 |
      | Evento de Teste 2 |
      | Evento de Teste 3 |
      | Evento de Teste   |

  Cenário: Alterar evento
    Dado que estou em listagem de eventos
    E peço a alteração do evento que o(a) titulo é "Evento de Teste 1"
    E defino título como "Evento Alterado"
    Quando peço para salvar
    Então preciso ver "Registro alterado com sucesso."
    E preciso ver os seguintes registros:
      | titulo            |
      | Evento Alterado   |
      | Evento de Teste 2 |
      | Evento de Teste 3 |

  Cenário: Listar eventos
    Quando eu estiver em listagem de eventos
    Então preciso ver "Encontrado(s) 3 registro(s)."
    E preciso ver os seguintes registros:
      | titulo            |
      | Evento de Teste 1 |
      | Evento de Teste 2 |
      | Evento de Teste 3 |

  Cenário: Remover evento
    Dado que estou em listagem de eventos
    Quando peço a exclusão do evento que o(a) titulo é "Evento de Teste 1"
    Então preciso ver "Registro excluído com sucesso."
    E preciso ver "Encontrado(s) 2 registro(s)."
    E preciso ver os seguintes registros:
      | titulo            |
      | Evento de Teste 2 |
      | Evento de Teste 3 |
    E não devo ver os seguintes registros:
      | titulo            |
      | Evento de Teste 1 |

