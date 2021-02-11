class CadastroPage

  def clicar_botao_criar_conta
    $driver.find_element(:id, "com.mercadolibre:id/button_footer").click    
  end

  def clicar_botao_cadastrar
    if $driver.find_elements(:xpath, "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.Button[1]").count > 0
        puts "usuario na tela"
    end
  end

  def escrever_senha
  
  end

  def validar_user_logado
    
  end

  def clicar_em_logar
    
  end 


end
