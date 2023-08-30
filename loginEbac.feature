#language: pt

Funcionalidade: Login na plataforma Ebac-Shop
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Contexto:
Dado que o usuario acesse a página de login da Ebac Shop


Cenário: Autenticação de Login Válida
Quando o usuario digitar o email "usuarioteste@ebac.com"
E senha "teste123"
Então deve direcionar o usuario para a tela de checkout


Cenário: Usuário Inválido
Quando eu digitar o usuário "xxteste@ebac.com"
E senha "teste123"
Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"


Cenário: Senha Inválida
Quando eu digitar o usuário "usarioteste@ebac.com"
E senha "xxx123"
Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"