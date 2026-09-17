# Portfólio de Quality Assurance — E-commerce Web e API

Projeto educacional de Quality Assurance desenvolvido por **André Luiz**, estudante de Engenharia de Software da UFAM, com o objetivo de transformar conhecimentos acadêmicos de Verificação e Validação em evidências práticas para processos seletivos de estágio em QA.

## Apresentação

O projeto documenta o planejamento, a preparação, a execução e a comunicação de testes em dois alvos independentes que compartilham o domínio de comércio eletrônico:

1. **SauceDemo / Swag Labs** — aplicação web demonstrativa da Sauce Labs.
2. **DummyJSON** — API REST pública com recursos de produtos, carrinhos e autenticação.

> Os dois sistemas não possuem integração entre si. Eles foram reunidos apenas para permitir a prática de testes web e testes de API dentro de um mesmo domínio de aprendizagem.

## Objetivo

Demonstrar, de forma honesta e rastreável, competências iniciais em:

- análise de riscos e definição de escopo;
- elaboração de cenários e casos de teste;
- testes funcionais, negativos e exploratórios;
- documentação de defeitos;
- testes de aplicações web;
- testes de API REST com Postman;
- SQL aplicado à validação de dados;
- Git, GitHub e GitHub Issues;
- elaboração de relatório de execução.

## Sistemas testados

### Aplicação web

- **Nome:** SauceDemo / Swag Labs
- **Aplicação:** https://www.saucedemo.com/
- **Projeto oficial:** https://github.com/saucelabs/sample-app-web
- **Finalidade:** aplicação demonstrativa de comércio eletrônico projetada para uso em testes em navegadores desktop.

### API complementar

- **Nome:** DummyJSON
- **Base URL:** https://dummyjson.com
- **Documentação:** https://dummyjson.com/docs
- **Finalidade:** API REST fictícia para desenvolvimento, testes e prototipação.

## Escopo resumido

### Web

- autenticação;
- catálogo e ordenação de produtos;
- carrinho;
- checkout demonstrativo;
- mensagens de validação;
- navegação;
- persistência de estado durante a sessão;
- responsividade básica;
- acessibilidade básica;
- tentativa de acesso sem autenticação.

### API

- listagem paginada de produtos;
- consulta de produto por ID;
- pesquisa de produtos;
- autenticação;
- consulta de carrinho por ID;
- validações de status, tempo, campos, tipos e valores.

### SQL simulado

O banco SQLite incluído no repositório é **fictício e independente dos sistemas externos**. Ele existe apenas para treinamento de consultas usadas por QA.

## Tipos de teste

- teste funcional;
- teste negativo;
- teste de validação de campos;
- teste exploratório;
- teste básico de interface;
- teste básico de responsividade;
- verificação básica de acessibilidade;
- teste de API;
- validação de dados com SQL;
- teste de regressão, em etapa futura.

Não fazem parte desta versão: testes de carga, pentest, automação completa, testes em produção, dispositivos físicos e acesso aos bancos reais dos sistemas.

## Ferramentas

- Chrome ou Edge e DevTools;
- Postman;
- SQLite e DB Browser for SQLite, DBeaver ou terminal `sqlite3`;
- Git e GitHub;
- GitHub Issues;
- editor Markdown e planilha compatível com CSV.

## Estrutura do repositório

```text
qa-portfolio-ecommerce-testing/
├── README.md
├── docs/
├── test-cases/
├── bug-reports/
├── api-testing/
├── sql/
├── traceability/
├── evidence/
├── github-issues/
└── .github/ISSUE_TEMPLATE/
```

A descrição detalhada de cada arquivo está em [`docs/repository-map.md`](docs/repository-map.md).

## Conteúdo inicial

- 20 cenários de teste;
- 8 casos de teste detalhados, ainda não executados;
- 3 charters de testes exploratórios;
- modelo de relatório de bug;
- 2 bugs simulados exclusivamente para treinamento;
- matriz inicial de rastreabilidade;
- collection do Postman com requisições positivas e negativas;
- ambiente do Postman sem tokens reais;
- banco SQLite fictício com dados e inconsistências intencionais;
- consultas SQL de validação;
- quatro formulários de GitHub Issues;
- plano de execução das primeiras sessões.

## Competências demonstradas

O repositório foi preparado para demonstrar progressivamente:

- pensamento orientado a risco;
- projeto de testes;
- documentação clara e reproduzível;
- rastreabilidade;
- comunicação de defeitos;
- análise de respostas HTTP e JSON;
- uso de assertions no Postman;
- consultas SQL com filtros, agregações e JOIN;
- organização e versionamento de artefatos.

A presença de um arquivo ou modelo não significa domínio completo da habilidade. Os resultados serão adicionados somente após execução real e revisão.

## Status atual

**Fase: planejamento concluído e ambiente preparado.**

- Casos executados: **0**
- Bugs reais confirmados: **0**
- Evidências reais coletadas: **0**
- Collection do Postman: **pronta para importação**
- Banco SQLite de treinamento: **pronto para uso**

## Próximos passos

1. criar o repositório no GitHub;
2. importar estes arquivos;
3. executar os casos `TC-WEB-001` a `TC-WEB-004`;
4. salvar evidências com a convenção definida;
5. importar e executar a collection do Postman;
6. registrar resultados sem alterar os resultados esperados;
7. abrir issues para tarefas, investigações e bugs confirmados;
8. atualizar a matriz e o relatório de execução;
9. revisar o README com números reais.

## Resultados e evidências

Esta seção será atualizada depois da primeira execução.

| Indicador | Resultado atual |
|---|---:|
| Cenários planejados | 20 |
| Casos detalhados | 8 |
| Casos executados | 0 |
| Casos aprovados | 0 |
| Casos reprovados | 0 |
| Casos bloqueados | 0 |
| Bugs confirmados | 0 |
| Endpoints exercitados | 0 |
| Consultas SQL executadas | 0 |

## Aviso educacional

Este é um projeto individual de aprendizagem. Ele não representa trabalho contratado pela Sauce Labs ou pelo DummyJSON, não afirma certificação profissional e não deve ser usado para realizar testes destrutivos, sobrecarga, exploração de segurança ou qualquer atividade que prejudique os serviços externos.

## Fontes oficiais

- Sauce Labs Open Source Projects: https://opensource.saucelabs.com/projects/
- Sauce Labs Sample App Web: https://github.com/saucelabs/sample-app-web
- DummyJSON: https://dummyjson.com/docs
- Postman — testes e scripts: https://learning.postman.com/docs/tests-and-scripts/write-scripts/test-scripts/
- GitHub — Issue Forms: https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/syntax-for-issue-forms
- SQLite: https://sqlite.org/docs.html
