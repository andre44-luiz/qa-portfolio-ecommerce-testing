# Casos de teste detalhados

> Estado inicial: todos os casos estão **Não executados**. Os resultados esperados foram definidos para orientar a execução; os resultados obtidos devem ser preenchidos apenas após observação real.

## TC-WEB-001 — Autenticar com credenciais válidas

- **Cenário:** SC-WEB-001
- **Requisito:** REQ-WEB-LOGIN-001
- **Prioridade:** Alta
- **Pré-condições:** aplicação acessível; usuário na página inicial; sem sessão autenticada.
- **Dados de teste:** usar uma credencial de demonstração exibida pela própria aplicação no momento da execução.
- **Passos:**
  1. Acessar `https://www.saucedemo.com/`.
  2. Registrar o usuário de demonstração escolhido.
  3. Informar o usuário.
  4. Informar a senha de demonstração.
  5. acionar o botão de login.
- **Resultado esperado:** a autenticação é aceita e a área de produtos fica disponível; nenhuma mensagem de erro de login permanece visível.
- **Resultado obtido:** Após informar o usuário e a senha planejados para demonstração, a aplicação direcionou o usuário para a página de produtos..
- **Status:** Aprovado.
- **Ambiente:** Windows 11, Google Chrome.
- **Evidências:** `evidence/screenshots/TC-WEB-001_2026-09-16_acesso-catalogo-com-alerta-navegador.png`
- **Observações:** não registrar senha em capturas públicas. Durante a execução, o navegador exibiu um alerta informando que a senha utilizada foi encontrada em um vazamento de dados. O alerta aparenta ser proveniente do navegador/gerenciador de senhas e não foi considerado resultado funcional da aplicação. A ocorrência será tratada como observação de ambiente.
aplicação. A ocorrência será tratada como observação de ambiente.

## TC-WEB-002 — Validar usuário obrigatório

- **Cenário:** SC-WEB-005
- **Requisito:** REQ-WEB-LOGIN-002
- **Prioridade:** Alta
- **Pré-condições:** página de login carregada; sem sessão.
- **Dados de teste:** usuário vazio; senha de demonstração válida.
- **Passos:**
  1. Manter o campo de usuário vazio.
  2. Informar uma senha de demonstração válida.
  3. acionar o login.
- **Resultado esperado:** o acesso não ocorre; existe feedback observável associado à ausência do usuário.
- **Resultado obtido:** O sistema não permitiu o acesso à página de produtos ao deixar Username vazio e a senha de demonstração preenchida.
- **Status:** Aprovado
- **Ambiente:** Windows 11, Google Chrome
- **Evidências:** `evidence/screenshots/TC-WEB-002_aprovado_username-obrigatorio.png`
- **Observações:** A validação do campo obrigatório ocorreu conforme o esperado.

## TC-WEB-003 — Validar senha obrigatória

- **Cenário:** SC-WEB-006
- **Requisito:** REQ-WEB-LOGIN-003
- **Prioridade:** Alta
- **Pré-condições:** página de login carregada; sem sessão.
- **Dados de teste:** usuário de demonstração válido; senha vazia.
- **Passos:**
  1. Informar o usuário de demonstração.
  2. Manter a senha vazia.
  3. acionar o login.
- **Resultado esperado:** o acesso não ocorre; existe feedback observável associado à ausência da senha.
- **Resultado obtido:** O sistema não permitiu o acesso à página de produtos ao deixar Username preenchido e a senha de demonstração vazia.
- **Status:** aprovado.
- **Ambiente:** Windows 11, Google Chrome.
- **Evidências:** `evidence/screenshots/TC-WEB-003_aprovado_password-obrigatorio.png`
- **Observações:** confirmar se o feedback é textual e visível.

## TC-WEB-004 — Rejeitar credenciais inválidas

- **Cenário:** SC-WEB-008
- **Requisito:** REQ-WEB-LOGIN-004
- **Prioridade:** Alta
- **Pré-condições:** página de login carregada; sem sessão.
- **Dados de teste:** usuário `usuario123`; senha `senha123`.
- **Passos:**
  1. Informar o usuário inválido.
  2. Informar a senha inválida.
  3. acionar o login.
- **Resultado esperado:** a área autenticada não é disponibilizada e existe feedback de falha sem exposição de informação sensível.
- **Resultado obtido:** O sistema não permitiu o acesso à página de produtos devido ao uso de uma senha e username inválidos.
- **Status:** Aprovado.
- **Ambiente:** Windows 11, Google Chrome.
- **Evidências:** `evidence/screenshots/TC-WEB-004_aprovado_credenciais-invalidas.png` 
- **Observações:**  A aplicação permaneceu na tela de login e não disponibilizou acesso à área autenticada..

# TC-WEB-005 — Adicionar produto ao carrinho

- **Cenário:** SC-WEB-003
- **Requisito:** REQ-WEB-CART-001
- **Prioridade:** Alta
- **Pré-condições:** aplicação acessível; usuário autenticado; página de produtos carregada; estado inicial do carrinho conhecido.
- **Dados de teste:** usuário de demonstração válido; primeiro produto visível no catálogo; nome do produto: registrar durante a  execução; preço do produto: registrar durante a execução; quantidade inicial do carrinho: registrar antes da ação.
- **Passos:**
  1. Acessar o SauceDemo e realizar login com uma credencial de demonstração válida.
  2. Confirmar que a página de produtos foi carregada.
  3. Verificar o estado inicial do carrinho e registrar a quantidade exibida no indicador.
  4. Escolher o primeiro produto visível no catálogo.
  5. Registrar o nome e o preço do produto escolhido.
  6. Clicar no botão **Add to cart** do produto.
  7. Verificar se o indicador do carrinho foi atualizado.
  8. Clicar no ícone do carrinho.
  9. Verificar se o produto adicionado aparece na página do carrinho.
  10. Comparar o nome do produto no carrinho com o nome registrado no catálogo.
  11. Comparar o preço do produto no carrinho com o preço registrado no catálogo.
- **Resultado esperado:** O produto selecionado é adicionado ao carrinho corretamente, o indicador do carrinho é atualizado de forma coerente com a quantidade de itens adicionados, e o mesmo produto aparece na página do carrinho. Além disso, o nome e o preço exibidos no carrinho correspondem às informações apresentadas anteriormente no catálogo.
- **Resultado obtido:** Após adicionar o produto "Sauce Labs Backpack", com preço de $29.99, o indicador do carrinho foi atualizado para 1. Ao acessar o carrinho, o mesmo produto foi exibido com quantidade 1 e preço de $29.99, correspondendo às informações apresentadas no catálogo..
- **Status:** Aprovado.
- **Ambiente:** Windows 11, Google Chrome.
- **Evidências:**
  - `evidence/screenshots/TC-WEB-005_2026-09-16_produto-adicionado-catalogo.png`
  - `evidence/screenshots/TC-WEB-005_2026-09-16_produto-confirmado-carrinho.png`
- **Observações:** O nome, o preço e a quantidade do produto permaneceram consistentes entre o catálogo e o carrinho.

## TC-WEB-006 — Tentar acesso direto sem autenticação

- **Cenário:** SC-WEB-013
- **Requisito:** REQ-WEB-SEC-001
- **Prioridade:** Alta
- **Pré-condições:** janela anônima ou armazenamento da aplicação limpo; nenhuma sessão válida.
- **Dados de teste:** URL interna identificada durante uma execução autenticada.
- - **Passos:**
  1. Realizar login normalmente no SauceDemo com uma credencial de demonstração válida.
  2. Após acessar a página de produtos, copiar a URL da área autenticada exibida no navegador.
  3. Encerrar a sessão autenticada ou abrir uma nova janela anônima do navegador.
  4. Confirmar que a nova janela não possui sessão ativa do SauceDemo.
  5. Colar diretamente na barra de endereços a URL interna copiada anteriormente.
  6. Pressionar Enter para tentar acessar a página.
  7. Observar se a aplicação permite ou impede o acesso.
  8. Registrar a URL final apresentada pelo navegador.
  9. Registrar qualquer mensagem exibida pela aplicação.
  10. Verificar se algum conteúdo da área autenticada permanece acessível.
  11. Salvar uma captura de tela com o resultado observado.
- **Resultado esperado:** a área autenticada não permanece utilizável sem uma sessão válida.
- **Resultado obtido:**  Ao tentar acessar diretamente a página `/inventory.html` em uma janela anônima, sem sessão autenticada, a aplicação redirecionou o usuário para a tela de login e exibiu a mensagem "Epic sadface: You can only access '/inventory.html' when you are logged in"..
- **Status:** Aprovado.
- **Ambiente:**  Windows 11, Google Chrome.
- **Evidências:** `evidence/screenshots/TC-WEB-006_redirecionado-para-login.png`
- **Observações:** A área interna não permaneceu acessível sem autenticação. O comportamento observado correspondeu ao resultado esperado.

## TC-API-001 — Listar produtos no limite mínimo planejado

- **Cenário:** SC-API-001
- **Requisito:** REQ-API-PROD-001
- **Prioridade:** Alta
- **Pré-condições:** Postman disponível; environment selecionado; internet disponível.
- **Dados de teste:** `limit=1`; `skip=0`.
- **Passos:**
  1. Enviar `GET {{base_url}}/products?limit=1&skip=0`.
  2. registrar status e tempo.
  3. inspecionar o corpo JSON.
  4. executar as assertions da collection.
- **Resultado esperado:** status `200`; corpo JSON válido; `products` é array; a quantidade retornada não excede 1; `skip` é 0; campos de produto apresentam tipos coerentes.
- **Resultado obtido:** Não executado.
- **Status:** Não executado.
- **Ambiente:** Postman; versão a registrar.
- **Evidência:** export do Runner ou `evidence/screenshots/TC-API-001_<data>_<resultado>.png`.
- **Observações:** este caso usa um valor-limite prático do parâmetro documentado.

## TC-API-002 — Consultar produto com ID em formato inválido

- **Cenário:** SC-API-002
- **Requisito:** REQ-API-PROD-002
- **Prioridade:** Alta
- **Pré-condições:** Postman disponível; environment selecionado.
- **Dados de teste:** `product_id_invalid=abc`.
- **Passos:**
  1. Enviar `GET {{base_url}}/products/abc`.
  2. registrar status, headers e corpo.
  3. verificar se a resposta não representa um produto válido com sucesso normal.
- **Resultado esperado:** a API retorna uma resposta de erro de cliente (`4xx`) ou outra indicação inequívoca de recurso inválido; não deve retornar um produto válido com status de sucesso. O código exato será documentado após a primeira execução.
- **Resultado obtido:** Não executado.
- **Status:** Não executado.
- **Ambiente:** Postman; versão a registrar.
- **Evidência:** export do Runner ou `evidence/screenshots/TC-API-002_<data>_<resultado>.png`.
- **Observações:** não transformar diferença de código em bug antes de consultar a documentação e repetir.
