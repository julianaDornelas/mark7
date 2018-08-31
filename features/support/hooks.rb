
Before do
    @login_page = LoginPage.new
    @tarefas_page = TarefasPage.new
    @perfil_page = PerfilPage.new
    @nav = Navbar.new
  end
  
  Before('@login') do
    @login_page.load
    @login_page.wait_for_formulario
    @login_page.logar('julianadornelas1972@gmail.com', '123456')
    @tarefas_page.wait_for_ola
  end
  
  After('@logout') do
    @nav.logout
  end

  After do |scenario|
    nome_cenario = scenario.name.gsub(/[^A-Za-z0-9 ]/, '')
    puts nome_cenario = nome_cenario.tr(' ', '_').downcase!

    screenshot = "log/screenshots/#{nome_cenario}.png"
    page.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Evidencia')
  end
