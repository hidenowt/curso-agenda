Quando /^peço a (alteração|exclusão) do (.*) que o\(a\) (.*) é "([^\"]*)"$/ do |acao, classe, variavel, valor|
  classe = classe.gsub(/\s/, '_')
  id = unless variavel == "id" then
    classe.camelize.constantize.send("find_by_#{variavel}!", "#{valor}").id.to_s
  else
    valor
  end

  within("tr[id=#{classe}_#{id}]") do
    case acao
      when "verificação de permissões"
        click_link("Permissões")
      when "alteração"
        click_link("Alterar")
      when "exclusão"
        click_link("Excluir")
    end
  end
end

