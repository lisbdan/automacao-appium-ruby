#encoding: UTF-8
#language: pt

Funcionalidade: Abrir pagina do laboratório através da seleção de Marcas
    Validar a seleção de marcas para garantir que a marca selecionada
    será a marca apresentada para o cliente.


Esquema do Cenario: Abrir pagina do laboratório através da seleção de Marcas

Dado que eu faça um fitro por <regiao> para escolher um <laboratorio> na pagina Nossas Marcas
Quando clico no link da Marca que direciona para o site do laboratorio
Entao valido se a pagina que foi apresentada é a <pagina> do laboratório da marca selecionada

Exemplos:

| regiao    | laboratorio   | pagina                         |
| São Paulo | Delbone       | https://delboniauriemo.com.br/ |

