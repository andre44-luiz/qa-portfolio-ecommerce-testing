# Registro inicial de riscos

## Escala

- **Probabilidade:** baixa, média ou alta.
- **Impacto:** baixo, médio, alto ou crítico.
- **Prioridade:** combinação qualitativa usada para orientar a ordem dos testes.

## Riscos de produto

| ID | Área | Risco | Probabilidade | Impacto | Prioridade | Cobertura inicial |
|---|---|---|---|---|---|---|
| RISK-WEB-001 | Login | Usuário válido não consegue acessar o catálogo | Média | Crítico | Alta | SC-WEB-001 |
| RISK-WEB-002 | Login | Entrada inválida permite acesso | Baixa | Crítico | Alta | SC-WEB-008 |
| RISK-WEB-003 | Validação | Campo obrigatório não apresenta feedback claro | Média | Médio | Média | SC-WEB-005, SC-WEB-006, SC-WEB-007 |
| RISK-WEB-004 | Carrinho | Produto selecionado não é refletido no carrinho | Média | Alto | Alta | SC-WEB-003, SC-WEB-009 |
| RISK-WEB-005 | Carrinho | Estado do carrinho se perde durante a navegação | Média | Alto | Alta | SC-WEB-012 |
| RISK-WEB-006 | Checkout | Fluxo aceita dados obrigatórios ausentes | Média | Alto | Alta | SC-WEB-007 |
| RISK-WEB-007 | Navegação | Usuário acessa área restrita sem sessão válida | Baixa | Alto | Alta | SC-WEB-013 |
| RISK-WEB-008 | Interface | Conteúdo fica inutilizável em tela estreita | Média | Médio | Média | SC-WEB-014 |
| RISK-WEB-009 | Acessibilidade | Fluxo principal não pode ser operado por teclado | Média | Médio | Média | SC-WEB-015 |
| RISK-API-001 | Produtos | Lista apresenta estrutura incompatível com o contrato observado | Média | Alto | Alta | SC-API-001 |
| RISK-API-002 | Produto | ID válido retorna produto incorreto | Baixa | Alto | Alta | SC-API-002 |
| RISK-API-003 | Pesquisa | Pesquisa ignora o termo ou retorna estrutura inválida | Média | Médio | Média | SC-API-003 |
| RISK-API-004 | Autenticação | Credenciais válidas não retornam tokens | Média | Crítico | Alta | SC-API-004 |
| RISK-API-005 | Carrinho | Totais ou itens do carrinho são inconsistentes | Média | Alto | Alta | SC-API-005 |

## Riscos do projeto

| ID | Risco | Resposta |
|---|---|---|
| RISK-PROJ-001 | Serviço externo indisponível | Registrar bloqueio, data e tentar outra implantação oficial. |
| RISK-PROJ-002 | Mudança na interface ou dados | Revisar casos e manter evidência da versão observada. |
| RISK-PROJ-003 | Confundir sistemas independentes | Repetir no README e relatórios que não há integração. |
| RISK-PROJ-004 | Publicar token ou dado sensível | Usar variáveis, limpar exports e revisar commits. |
| RISK-PROJ-005 | Registrar simulação como bug real | Usar prefixo `SIM-BUG` e pasta separada. |
| RISK-PROJ-006 | Exagerar competências | Apresentar números e limitações verificáveis. |
| RISK-PROJ-007 | Evidência insuficiente | Usar convenção de nomes e relacionar evidência ao ID. |
| RISK-PROJ-008 | Casos frágeis por dados mutáveis | Validar tipos e regras, evitando valores desnecessariamente fixos. |
