Factory.define :contato do |c|
  c.sequence(:nome) { |n| "Nome de Teste #{n}" }
  c.sequence(:email) { |n| "emaildeteste#{n}@exemplo.com.br" }
  c.telefone '(88) 3581 0000'
  c.celular  '(88) 9999 0000'
  c.endereco 'Endereço de Teste'
end

