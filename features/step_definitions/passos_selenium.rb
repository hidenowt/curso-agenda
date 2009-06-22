Quando /^peço a (alteração|exclusão) do (.*) que o\(a\) (.*) é "([^\"]*)"$/ do |acao, classe, variavel, valor|
  classe = classe.gsub(/\s/, '_')
  id = unless variavel == "id" then
    classe.camelize.constantize.send("find_by_#{variavel}!", "#{valor}").id.to_s
  else
    valor
  end

  case acao
    when "alteração"
      selenium.click("//a[@href='/#{classe.pluralize}/#{id}/edit']")
    when "exclusão"
      selenium.click("//a[@href='/#{classe.pluralize}/#{id}'][@onclick]")
      selenium.get_confirmation
  end
end

