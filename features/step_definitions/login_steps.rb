Dado("que eu acessei o sistema") do
visit '/'
end

Quando("faço login com {string} e {string}") do |email, senha|
@login_page.wait_for_formulario
@login_page.logar(email, senha)

end

Então("vejo a seguinte mensagem {string}") do |mensagem|
  @tarefas_page.wait_for_ola
  expect(@tarefas_page.ola).to have_content mensagem
end

Então("vejo a seguinte mensagem de alerta {string}") do |mensagem|
  @login_page.wait_for_alerta
  expect(@login_page.alerta.text).to eql mensagem
end
