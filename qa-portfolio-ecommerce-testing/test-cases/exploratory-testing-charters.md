# Charters de testes exploratórios

## CHAR-WEB-001 — Autenticação e feedback

- **Missão:** explorar a autenticação para descobrir inconsistências de validação, feedback, foco, sessão e navegação.
- **Área:** página de login e primeira tela após autenticação.
- **Riscos:** acesso indevido; bloqueio de usuário válido; mensagens confusas; foco perdido; senha exposta; sessão inconsistente.
- **Duração sugerida:** 30 minutos.
- **Dados:** credencial de demonstração válida; usuário inválido; campos vazios; espaços antes e depois.
- **Heurísticas:** CRUD adaptado às entradas, estados, interrupções, sequência, consistência e mensagens.
- **Perguntas:**
  - O que acontece com cada campo vazio?
  - Espaços alteram o comportamento?
  - O feedback permanece após corrigir os dados?
  - A tecla Enter funciona?
  - A senha permanece mascarada?
  - O botão pode ser acionado várias vezes?
  - Voltar no navegador altera a sessão?
- **Evidências:** capturas de mensagens, vídeo apenas se houver comportamento intermitente, console e rede quando relevantes.
- **Anotações:** usar `Hora | Ação | Observação | Risco | Próximo experimento | Evidência`.

## CHAR-WEB-002 — Catálogo, carrinho e navegação

- **Missão:** explorar relações entre catálogo, ordenação, detalhes, carrinho e estado da sessão.
- **Área:** produtos, detalhes, carrinho e menu.
- **Riscos:** item incorreto; preço divergente; indicador inconsistente; perda de estado; ordenação incorreta; navegação sem retorno.
- **Duração sugerida:** 45 minutos.
- **Dados:** dois produtos diferentes; estados de carrinho vazio, um item e múltiplos itens.
- **Heurísticas:** tours de fluxo principal, estados, interrupções, repetição, comparação e histórico.
- **Perguntas:**
  - Nome e preço permanecem consistentes?
  - O indicador acompanha adicionar e remover?
  - A ordem muda de acordo com o seletor?
  - Atualizar a página altera o carrinho?
  - Abrir detalhe e retornar perde estado?
  - Logout limpa o estado esperado?
- **Evidências:** antes/depois, nomes e preços, URL, Network quando houver dúvida.
- **Anotações:** usar `Experimento | Resultado | Variação | Possível problema | Reproduzido? | Evidência`.

## CHAR-API-001 — Produtos, autenticação e carrinhos

- **Missão:** explorar contratos observáveis, tipos, erros, paginação, autenticação e consistência de totais.
- **Área:** cinco padrões de endpoint da collection.
- **Riscos:** JSON incompatível; tipos inesperados; token ausente; resposta inválida tratada como sucesso; totais incoerentes.
- **Duração sugerida:** 45 minutos.
- **Dados:** IDs válidos e inválidos; termos de pesquisa; credenciais válidas e inválidas; `limit` e `skip`.
- **Heurísticas:** valores-limite, tipos, campos obrigatórios, idempotência observável, erro, estrutura e consistência aritmética.
- **Perguntas:**
  - `limit=1` é respeitado?
  - `skip=0` é refletido?
  - IDs e preços possuem tipos consistentes?
  - Pesquisa vazia e pesquisa sem resultado são distinguíveis?
  - Login inválido retorna token?
  - Totais do carrinho correspondem aos itens?
  - Campos mudam entre chamadas?
- **Evidências:** export do Runner, corpo de erro, headers e scripts que falharam.
- **Anotações:** usar `Request | Dados | Status | Tempo | Assertion | Observação | Evidência`.
