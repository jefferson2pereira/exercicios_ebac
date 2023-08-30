            #language: pt

            Funcionalidade: Configurar Produto

            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que o usuario esteja logado na plataforma de compra EBAC-SHOP e queira incluir um produto 
            no carrinho

            Cenário: Incluir no carrinho
            Quando a opção <cor>, <tamanho> e <quantidade> forem definidas pelo usuario
            Então deve permitir ao usuario, incluir o produto selecionado no carrinho.

            Cenário: Não permitir a inclusão de produtos
            Quando o usuario deixar de definir uma das opções: <cor>,<tamanho> e <quantidade>
            Então deve exibir uma mensagem de alerta "Você deve preencher os campos: cor, tamanho e quantidade"
           
            Cenário: Quantidade de produtos por Venda
            Quando incluir no carrinho mais de 10 produtos
            Então deve impedir a compra e exibir uma mensagem de alerta "não é permitido a inclusão acima de 10 itens por compra!"

            Esquema do Cenário: Seleção de Cor,  Tamanho e Quantidade
            Quando o usuario escolher a <cor>, <tamanho> e <quantidade> do Produto desejado
            Então deve disponibilizar ao carrinho os produtos disponiveis em <caracteriticas selecionadas>
           
            Exemplos:
            | "cor"    | "tamanho | "quantidade" | "caracteristica selecionada" |
            | "Blue"   | "XS"     | "2"          | "2-Produto-Blue-XS"          |
            | "Blue"   | "S"      | "1"          | "1-Produto-Blue-S"           |
            | "Orange" | "M"      | "5"          | "5-Produto-Orange-M"         |
            | "Red"    | "L"      | "10"         | "10-Produto-Red-L"           |
            | "Blue"   | "XL"     | "7"          | "7-Produto-Blue-XL"          |
            | "Orange" | "XS"     | "4"          | "4-Produto-Blue-XS"          |

            Cenário: Mudança de opções
            Dado que o usuario tenha a intenção de mudar a opção quanto a cor tamanho e quantidade
            Quando clicar no botão "limpar"
            Então o sistema deve limpar todos os dados referente a este produto e voltar ao estado original
