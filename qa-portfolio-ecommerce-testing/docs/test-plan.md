# Plano de Testes — Portfólio QA E-commerce

## 1. Identificação

- **Projeto:** Portfólio de QA — E-commerce Web e API
- **Responsável:** André Luiz
- **Tipo:** projeto individual educacional
- **Versão do plano:** 0.1
- **Data inicial:** 27/07/2026
- **Status:** aprovado para primeira execução

## 2. Objetivo

Avaliar fluxos prioritários do SauceDemo e padrões de endpoints do DummyJSON, documentando planejamento, execução, incidentes, evidências e conclusões de forma rastreável e adequada a um portfólio de estágio em QA.

## 3. Itens de teste

### Aplicação web

- autenticação;
- catálogo;
- ordenação;
- detalhes;
- carrinho;
- checkout demonstrativo;
- menu e navegação;
- comportamento em viewport estreito;
- operação por teclado em nível básico.

### API

- produtos;
- pesquisa;
- autenticação;
- carrinhos;
- parâmetros de paginação;
- respostas inválidas.

### Banco simulado

- usuários;
- produtos;
- pedidos;
- itens de pedidos;
- consistência entre totais, estoque e relacionamentos.

## 4. Funcionalidades testadas

Consultar [`scope.md`](scope.md) para o escopo completo. As prioridades iniciais são:

1. login;
2. carrinho;
3. acesso sem sessão;
4. listagem e consulta de produto;
5. autenticação da API;
6. consistência de carrinho da API;
7. validações SQL.

## 5. Funcionalidades não testadas

- processamento financeiro;
- integrações reais;
- backend interno;
- banco real;
- segurança ofensiva;
- desempenho;
- infraestrutura;
- automação completa;
- dispositivos físicos.

## 6. Estratégia

### 6.1 Abordagem baseada em risco

Os fluxos que bloqueiam o uso ou afetam integridade de dados serão executados primeiro. A ordem inicial será:

1. smoke de disponibilidade;
2. login positivo;
3. validações negativas de login;
4. carrinho;
5. tentativa de acesso sem sessão;
6. endpoints positivos;
7. endpoints negativos;
8. testes exploratórios;
9. SQL simulado.

### 6.2 Projeto dos testes

Serão utilizadas:

- classes de equivalência para credenciais e campos;
- valores-limite em parâmetros documentados, como `limit=1` e `skip=0`;
- fluxos positivos e negativos;
- teste exploratório orientado por charters;
- rastreabilidade entre requisito, risco, cenário, caso e bug.

### 6.3 Execução

Cada caso receberá um dos status:

- **Não executado**
- **Aprovado**
- **Reprovado**
- **Bloqueado**
- **Não aplicável**

O resultado obtido deve descrever apenas o que foi observado. Um caso reprovado não será automaticamente considerado bug; primeiro será investigado contra o comportamento e a documentação disponíveis.

### 6.4 Evidências

- capturas PNG para estados relevantes;
- vídeo curto apenas para problemas difíceis de reproduzir;
- export de execução do Postman;
- consulta SQL e resultado;
- ambiente e data;
- nomes relacionados ao ID do caso ou bug.

## 7. Tipos de teste

- funcional;
- positivo e negativo;
- validação de campos;
- valores-limite;
- exploratório;
- navegação;
- sessão e acesso básico;
- responsividade básica;
- acessibilidade básica;
- API;
- validação de dados simulados.

## 8. Ambiente

### Web

- sistema operacional: registrar na execução;
- navegador primário: Chrome estável;
- navegador secundário: Edge estável;
- desktop: 1366 × 768;
- viewport estreito: 375 × 812.

### API

- Postman;
- environment `DummyJSON - QA Portfolio`;
- `base_url=https://dummyjson.com`;
- credenciais fictícias fornecidas na documentação pública;
- token capturado em tempo de execução.

### SQL

- SQLite;
- banco `sql/qa_training.db`;
- modo de consulta somente leitura sempre que possível.

## 9. Ferramentas

- Chrome/Edge DevTools;
- Postman;
- SQLite;
- Git;
- GitHub;
- GitHub Issues;
- Markdown e CSV.

## 10. Responsabilidades

Como projeto individual, André Luiz será responsável por:

- analisar riscos;
- manter casos;
- preparar dados;
- executar;
- coletar evidências;
- investigar divergências;
- registrar issues;
- revisar o repositório;
- apresentar resultados e limitações.

## 11. Riscos

Os riscos estão em [`risks.md`](risks.md). Os principais riscos de execução são indisponibilidade externa, mudança de versão, dados mutáveis e exposição acidental de tokens.

## 12. Critérios de entrada

- alvo disponível;
- casos revisados;
- ambiente preparado;
- dados definidos;
- collection importada;
- pasta de evidências pronta;
- nenhuma ação destrutiva prevista.

## 13. Critérios de saída

A versão inicial será considerada executada quando:

- todos os 8 casos detalhados tiverem status;
- os 5 padrões de endpoint forem exercitados;
- falhas forem investigadas;
- evidências prioritárias forem salvas;
- matriz estiver atualizada;
- relatório de resumo estiver preenchido;
- nenhum token real estiver versionado.

## 14. Critérios de suspensão e retomada

Aplicar os critérios definidos em [`scope.md`](scope.md). Uma indisponibilidade externa será tratada como bloqueio, não como falha funcional.

## 15. Entregáveis

- plano de testes;
- escopo e riscos;
- cenários;
- casos detalhados;
- charters;
- collection e ambiente do Postman;
- consultas e banco SQLite;
- issues;
- evidências;
- matriz;
- bugs confirmados, se existirem;
- relatório de execução;
- README atualizado.

## 16. Registro de incidentes

Qualquer divergência seguirá este fluxo:

1. repetir o caso;
2. verificar dados e pré-condições;
3. verificar console, rede ou resposta;
4. comparar com documentação e comportamento consistente;
5. classificar como dúvida, limitação, bloqueio, melhoria ou bug;
6. abrir a issue adequada;
7. relacionar a issue ao caso e à matriz.

## 17. Cronograma resumido

| Sessão | Atividade |
|---|---|
| 1 | Preparar GitHub e executar login |
| 2 | Carrinho, acesso sem sessão e evidências |
| 3 | Importar e executar Postman |
| 4 | Testes exploratórios |
| 5 | SQL simulado |
| 6 | Reteste, matriz, relatório e README |

## 18. Critérios de aprovação

### Caso

Um caso é aprovado quando todos os resultados esperados verificáveis forem observados.

### Primeira versão

A versão é aceitável para apresentação quando:

- não houver falha crítica sem explicação;
- bugs confirmados estiverem documentados;
- bloqueios e limitações estiverem visíveis;
- resultados forem rastreáveis;
- o repositório não contiver afirmações falsas de execução ou experiência.
