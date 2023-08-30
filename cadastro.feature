            #language: pt

            Funcionalidade: "Cadastro de Cliente"
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que o usuario esteja na pagina de Checkout

            Cenário: Dados Obrigatórios
            Quando o usuario preencher os campos <nome>,<sobrenome>, <País>, <endereço>, <cidade>,
            <cep>,<telefone>, <endereço de email>
            E tenha seus dados válidos
            Então Exibir a mensagem "Parabéns seu cadastrado foi realizado!" e finalizar a compra

            Cenário: Formato de Email Invalido
            Quando preencher o campo "endereço email" com o usuario "usuarioteste.ebaccom.br"
            E senha "teste123"
            Então deve exibir uma mensagem de erro "Formato de email inválido"

            Esquema do Cenário:
            Quando o usuario deixar algum campo obrigatório vazio
            E tentar finalizar o cadastro
            Então deve exibir uma <mensagem> de alerta

            Exemplos:
            | nome   | Sobrenome | País   | endereço   | cidade  | cep       | telefone  | endereço de email     | Mensagem                          |
            | João   | silva     | Brasil | rua 01     | S.Paulo | 3400-000  | 3233-3322 |                       | "Campo vazio: endereço de email*" |
            | Carlos | Ferreira  | Brasil | Av.Brandão | S.Luis  | 65045-380 |           | usuarioteste@ebac.com | "Campo vazio: telefone*"          |




