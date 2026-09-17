# Bugs simulados para treinamento

> **ATENÇÃO:** os itens abaixo são fictícios. Eles não afirmam defeitos reais no SauceDemo ou no DummyJSON e não entram nas métricas do projeto.

## SIM-BUG-001 — Indicador do carrinho não é atualizado após adicionar um item

- **Classificação:** Bug simulado para treinamento
- **Resumo:** em uma situação hipotética, o item aparece no carrinho, mas o indicador do cabeçalho permanece vazio.
- **Ambiente:** Windows 11; Chrome; versão fictícia para exemplo.
- **Versão:** não aplicável — simulação.
- **Pré-condições:** usuário autenticado; carrinho inicialmente vazio.
- **Passos:**
  1. Abrir o catálogo.
  2. Adicionar um produto.
  3. Observar o indicador.
  4. Abrir o carrinho.
- **Resultado atual simulado:** o produto aparece no carrinho, mas o indicador não muda.
- **Resultado esperado:** o indicador representa a quantidade de itens adicionados.
- **Severidade:** Média.
- **Prioridade:** Média.
- **Frequência simulada:** 3 de 3.
- **Evidências:** não existem; exemplo.
- **Relação:** SC-WEB-009 e TC-WEB-005.
- **Status:** Simulação — não abrir como bug real.

## SIM-BUG-002 — Login inválido disponibiliza conteúdo do catálogo por instantes

- **Classificação:** Bug simulado para treinamento
- **Resumo:** em uma situação hipotética, credenciais inválidas exibem o catálogo por um instante antes de retornar ao login.
- **Ambiente:** Windows 11; Edge; versão fictícia para exemplo.
- **Versão:** não aplicável — simulação.
- **Pré-condições:** sem sessão.
- **Passos:**
  1. Informar credenciais inválidas.
  2. acionar login.
  3. observar a tela durante a resposta.
- **Resultado atual simulado:** conteúdo interno aparece temporariamente.
- **Resultado esperado:** conteúdo autenticado nunca deve ser disponibilizado após credenciais inválidas.
- **Severidade:** Alta.
- **Prioridade:** Alta.
- **Frequência simulada:** 2 de 3.
- **Evidências:** não existem; exemplo.
- **Relação:** SC-WEB-008 e TC-WEB-004.
- **Status:** Simulação — não abrir como bug real.
