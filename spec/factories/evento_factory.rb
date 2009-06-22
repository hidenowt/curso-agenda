Factory.define :evento do |e|
  e.descricao 'Descrição de Teste'
  e.data_hora '2009-06-21'
  e.local 'Local de Teste'
  e.sequence(:titulo) { |n| "Evento de Teste #{n}" }
end

