
Dado('que eu faça um fitro por {string} para escolher um {string} na pagina Nossas Marcas') do | regiao, laboratorio |
  myBrands.load
  myBrands.click_select_region(regiao)
 end
 
 Quando('clico no link da Marca que direciona para o site do laboratorio') do 
   myBrands.click_link_open_page()
 end
 
 Entao('valido se a pagina que foi apresentada é a {string} do laboratório da marca selecionada') do | pagina |
   myBrands.validate_page_current(pagina)
end