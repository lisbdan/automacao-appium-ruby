# frozen_string_literal: true

Dado(/^que cliquei no botao criar conta$/) do
    @login = CadastroPage.new
  end
  
  Quando(/^clico no botao cadastra-me$/) do
    @login.clicar_em_logar
  end
  
  Então(/^verei o formulario de cadastro$/) do
    @login.validar_user_logado
  end