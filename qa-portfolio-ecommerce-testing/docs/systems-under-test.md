# Sistemas sob teste

## 1. Decisão

O projeto utiliza dois alvos independentes:

- **SauceDemo**, como aplicação web principal;
- **DummyJSON**, como API REST complementar.

A combinação permite demonstrar competências de teste web e API sem afirmar que a aplicação e a API compartilham o mesmo backend.

## 2. SauceDemo / Swag Labs

### Nome e finalidade

O SauceDemo, exibido como Swag Labs, é a aplicação demonstrativa web da Sauce Labs. O projeto oficial informa que ela foi criada para uso em navegadores desktop.

### Endereços oficiais

- Aplicação: https://www.saucedemo.com/
- Implantação alternativa: https://saucelabs.github.io/sample-app-web/
- Repositório oficial: https://github.com/saucelabs/sample-app-web
- Página de projetos da Sauce Labs: https://opensource.saucelabs.com/projects/

### Funcionalidades observáveis a validar na primeira sessão

As funcionalidades abaixo serão confirmadas pela navegação antes da execução formal:

- autenticação;
- catálogo de produtos;
- ordenação;
- detalhes de produto;
- inclusão e remoção no carrinho;
- fluxo demonstrativo de checkout;
- menu e navegação de retorno;
- encerramento de sessão.

Nenhum comportamento específico será considerado requisito definitivo antes de ser observado e registrado.

### Motivo da escolha

- acesso gratuito;
- finalidade explícita de demonstração e testes;
- domínio simples de comércio eletrônico;
- fluxos positivos e negativos;
- baixo risco de manipular dados reais;
- possibilidade de clonar e executar localmente em uma etapa futura.

### Limitações conhecidas

- é uma aplicação demonstrativa, não uma loja real;
- dados e comportamentos podem ser preparados para fins de teste;
- não há acesso autorizado ao banco de dados interno;
- não há processamento real de pagamento ou entrega;
- alterações do mantenedor podem modificar telas ou comportamentos;
- indisponibilidade externa pode bloquear temporariamente a execução.

### Risco de dependência externa

O projeto depende da disponibilidade, da versão e dos dados controlados pela Sauce Labs. Por isso, cada execução deve registrar data, URL, navegador e evidências.

### Alternativas

1. usar a segunda implantação oficial;
2. clonar o repositório oficial e executar localmente, caso o estudante já possua o ambiente necessário;
3. suspender os casos web e registrar o bloqueio, sem fabricar resultados.

## 3. DummyJSON

### Nome e finalidade

DummyJSON é uma API REST fictícia que fornece dados em JSON para desenvolvimento, teste e prototipação.

### Endereços oficiais

- Base URL: https://dummyjson.com
- Documentação: https://dummyjson.com/docs
- Produtos: https://dummyjson.com/docs/products
- Autenticação: https://dummyjson.com/docs/auth
- Carrinhos: https://dummyjson.com/docs/carts
- Repositório: https://github.com/Ovi/DummyJSON

### Recursos utilizados

- produtos;
- pesquisa de produtos;
- paginação;
- autenticação com usuário fictício;
- carrinhos.

### Motivo da escolha

- acesso público;
- documentação oficial com exemplos;
- recursos relacionados a comércio eletrônico;
- suporte a requisições positivas e negativas;
- autenticação e tokens fictícios;
- respostas JSON adequadas a assertions no Postman.

### Limitações conhecidas

- os dados são fictícios;
- operações de criação, alteração e exclusão são simuladas e podem não persistir;
- a API não é o backend do SauceDemo;
- respostas e massas de dados podem mudar;
- tempos de resposta dependem da internet e do serviço externo;
- códigos exatos dos cenários negativos serão confirmados na execução.

### Alternativa

Se a API estiver indisponível:

1. registrar a execução como bloqueada;
2. tentar novamente em outra sessão;
3. usar o repositório oficial para estudo local em etapa futura;
4. usar respostas salvas apenas para praticar scripts, marcando-as como mock e nunca como execução ao vivo.

## 4. Uso legal e seguro

- realizar apenas requisições normais previstas na documentação;
- não executar carga, flooding, varreduras, exploração ou tentativas de invasão;
- não enviar dados pessoais;
- não publicar tokens de sessão;
- respeitar limites e indisponibilidades;
- identificar claramente testes simulados e testes reais.
