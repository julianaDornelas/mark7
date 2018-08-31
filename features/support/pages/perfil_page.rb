class PerfilPage < SitePrism::Page 
    element :formulario, '#user-settings-profile-edit-form'
    element :campo_empresa, '#profile-company'
    element :combo_cargo, 'select[name$=job]'
    element :botao_salvar, '#form-submit-button'
    element :alerta,'.panel-c-success'

    def completa_cadastro(cadastro)
     campo_empresa.set cadastro [:empresa]

     combo_cargo.find('option', text: cadastro[:cargo]).select_option

     botao_salvar.click

    end

end