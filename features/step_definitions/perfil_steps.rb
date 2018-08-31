

Dado('que acesso o meu perfil') do
    visit '/user_settings/profile'
    @perfil_page.wait_for_formulario
  end
  
  Quando('completo o meu cadastro com:') do |table|
    @perfil_page.completa_cadastro(table.rows_hash)
    @perfil_page.wait_for_alerta
    puts @dados
  end
  
  Então('vejo uma mensagem de sucesso:') do |mensagem|
    @perfil_page.wait_for_alerta
    expect(@perfil_page.alerta).to have_content mensagem
    
  end