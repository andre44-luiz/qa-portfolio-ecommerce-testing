# Plano prático de execução

## Fazer agora

| Atividade | Objetivo | Ferramenta | Resultado esperado | Evidência | Critério de conclusão |
|---|---|---|---|---|---|
| Criar repositório no GitHub | Disponibilizar os artefatos | GitHub | Repositório público criado | URL do repositório | Arquivos visíveis e README renderizado |
| Importar a estrutura | Versionar o pacote inicial | Git e VS Code | Primeiro commit organizado | Histórico de commits | Nenhum arquivo essencial ausente |
| Revisar sistemas e escopo | Entender limites antes de testar | Markdown | Escopo compreendido | Anotação em issue de tarefa | Consegue explicar por que existem dois alvos |
| Preparar ambiente web | Registrar configuração | Chrome/Edge | Navegador pronto | Captura de `chrome://version` opcional | Versão e resolução anotadas |
| Executar `TC-WEB-001` | Validar login positivo | Navegador | Resultado registrado | PNG do catálogo ou erro | Caso com status e resultado obtido |
| Executar `TC-WEB-002` e `003` | Validar campos obrigatórios | Navegador | Feedback observado | PNG por comportamento relevante | Resultados preenchidos sem suposições |
| Importar collection | Preparar testes de API | Postman | Collection e environment importados | Captura da estrutura | Variáveis visíveis e token vazio |

## Próxima sessão

| Atividade | Objetivo | Ferramenta | Resultado esperado | Evidência | Critério de conclusão |
|---|---|---|---|---|---|
| Executar `TC-WEB-004` | Testar credenciais inválidas | Navegador | Acesso recusado ou divergência registrada | Captura da mensagem | Caso atualizado |
| Executar `TC-WEB-005` | Validar inclusão no carrinho | Navegador | Item e indicador consistentes | Antes/depois | Caso atualizado |
| Executar `TC-WEB-006` | Investigar acesso sem sessão | Navegador anônimo | Comportamento observado | URL e tela | Issue de investigação, se necessário |
| Executar collection positiva | Validar 5 padrões de endpoint | Postman | Assertions executadas | Export ou captura do Runner | Resultados preservados |
| Executar requests negativos | Observar códigos reais | Postman | Código e corpo registrados | Captura/resultado | Documentação atualizada |

## Depois da primeira execução

| Atividade | Objetivo | Ferramenta | Resultado esperado | Evidência | Critério de conclusão |
|---|---|---|---|---|---|
| Triar divergências | Separar bug, dúvida, limitação e bloqueio | GitHub Issues | Classificação justificável | Issue relacionada ao caso | Nenhum “bug” sem reprodução |
| Atualizar matriz | Manter rastreabilidade | CSV | Status e issues relacionados | Diff do arquivo | 8 casos atualizados |
| Executar charter 1 | Explorar autenticação | Navegador/DevTools | Notas de sessão | Capturas e log | Charter preenchido |
| Executar SQL | Praticar validações | SQLite | Consultas e anomalias identificadas | Capturas ou arquivo de resultados | Pelo menos 8 consultas executadas |
| Preencher relatório | Comunicar resultados | Markdown | Resumo quantitativo e riscos | `test-summary-report.md` | Números conferem com casos |
| Atualizar README | Apresentar progresso real | GitHub | Indicadores reais | Histórico do commit | Sem resultados fictícios |
