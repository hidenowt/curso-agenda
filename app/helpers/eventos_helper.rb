module EventosHelper

  def contatos_para_select( selecionados )
    options_for_select(
      Contato.all.map { |c| [c.nome, c.id ] },
      selecionados )
  end

end

