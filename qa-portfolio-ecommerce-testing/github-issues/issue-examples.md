# Exemplos de GitHub Issues

> Estes são exemplos de issues que podem ser criadas. Nenhum exemplo declara um defeito real já confirmado.

## 1. Tarefa

**Título:** `[TEST] Executar casos prioritários de login`

- **Classificação:** Tarefa
- **Objetivo:** executar `TC-WEB-001` a `TC-WEB-004`.
- **Critérios de conclusão:** status, resultado obtido, ambiente e evidências preenchidos.
- **Relacionados:** SC-WEB-001, 005, 006 e 008.

## 2. Suspeita em investigação

**Título:** `[INVESTIGAÇÃO] Verificar acesso direto à área interna sem sessão`

- **Classificação:** Suspeita em investigação
- **Observação:** comportamento ainda não executado ou confirmado.
- **Objetivo:** executar `TC-WEB-006` em janela anônima e comparar o resultado.
- **Saída possível:** esperado, limitação, melhoria ou bug confirmado.

## 3. Melhoria de documentação

**Título:** `[DOCS] Adicionar convenção de evidências ao README`

- **Classificação:** Melhoria
- **Motivo:** facilitar a navegação de recrutadores.
- **Critério de conclusão:** README aponta para as regras e apresenta um exemplo.

## 4. Tarefa de API

**Título:** `[API] Importar e executar requests positivos do DummyJSON`

- **Classificação:** Tarefa
- **Objetivo:** executar os cinco padrões de endpoint.
- **Critérios:** assertions executadas; resultados exportados; token removido antes do commit.

## 5. Bug confirmado — exemplo de estrutura

**Título:** `[BUG] Indicador do carrinho não corresponde aos itens adicionados`

- **Classificação:** Bug confirmado, mas **somente depois de reprodução real**.
- **Condição para abrir:** `TC-WEB-005` reprovado, repetido e evidenciado.
- **Não fazer:** copiar o `SIM-BUG-001` como se ele tivesse ocorrido.
- **Relacionamentos futuros:** caso, requisito, evidência e frequência.
