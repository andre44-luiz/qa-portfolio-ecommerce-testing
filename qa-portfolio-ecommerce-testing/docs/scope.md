# Escopo do projeto

## Objetivo geral

Planejar e executar testes manuais de uma aplicação web demonstrativa e testes de uma API REST pública, produzindo evidências profissionais de competências iniciais em Quality Assurance.

## Objetivos específicos

- analisar riscos;
- transformar funcionalidades observadas em cenários;
- detalhar e executar casos prioritários;
- comunicar incidentes e defeitos com clareza;
- validar respostas HTTP e JSON;
- praticar consultas SQL em um banco fictício;
- manter rastreabilidade;
- apresentar resultados sem exagerar o nível de experiência.

## Dentro do escopo

### SauceDemo

- login válido;
- validações de usuário e senha;
- credenciais inválidas;
- acesso ao catálogo após autenticação;
- ordenação de produtos;
- detalhes de produto;
- adicionar e remover itens;
- indicador do carrinho;
- navegação entre catálogo e carrinho;
- campos obrigatórios do checkout;
- conclusão do fluxo demonstrativo;
- tentativa de acesso direto sem sessão;
- responsividade básica;
- navegação por teclado e rótulos observáveis.

### DummyJSON

- `GET /products`;
- `GET /products/{id}`;
- `GET /products/search`;
- `POST /auth/login`;
- `GET /carts/{id}`;
- paginação, parâmetros e dados inválidos;
- status, tempo, headers e estrutura JSON;
- campos obrigatórios e tipos;
- ausência de token em respostas inválidas.

### SQL simulado

- SELECT;
- WHERE;
- ORDER BY;
- COUNT, SUM e AVG;
- GROUP BY;
- INNER JOIN e LEFT JOIN;
- validação de totais;
- detecção de duplicidades lógicas;
- comparação entre quantidade pedida e estoque.

## Fora do escopo

- banco real do SauceDemo ou DummyJSON;
- integração entre os dois sistemas;
- pagamento real;
- entrega e logística real;
- criação de contas reais;
- pentest ou exploração de vulnerabilidades;
- carga, estresse ou disponibilidade;
- automação completa;
- dispositivos móveis físicos;
- conformidade integral com WCAG;
- testes de infraestrutura;
- avaliação de qualidade interna do código-fonte.

## Tipos de teste realizados

- funcional;
- positivo;
- negativo;
- valores-limite em parâmetros documentados;
- validação de campos;
- exploratório;
- interface e responsividade básica;
- acessibilidade básica;
- sessão e acesso básico;
- API;
- validação de dados simulados.

## Tipos não realizados nesta etapa

- unitário;
- integração interna;
- desempenho;
- segurança ofensiva;
- recuperação;
- instalação;
- localização;
- automação de regressão;
- testes destrutivos.

## Ambientes

### Web

- Windows 10 ou 11;
- Chrome estável atual;
- Edge estável como execução adicional;
- resolução desktop de referência: 1366 × 768;
- viewport responsivo de referência: 375 × 812;
- conexão doméstica comum.

As versões exatas devem ser registradas no dia da execução.

### API

- Postman Desktop ou Web;
- ambiente `DummyJSON - QA Portfolio`;
- base URL configurada por variável;
- conexão à internet.

### SQL

- SQLite;
- arquivo `sql/qa_training.db`;
- DB Browser for SQLite, DBeaver ou terminal `sqlite3`.

## Premissas

- os serviços podem ser acessados legalmente para uso demonstrativo;
- o estudante não realizará ações destrutivas;
- os dados usados são fictícios;
- os comportamentos serão confirmados antes de serem tratados como requisitos;
- resultados serão registrados somente após execução real.

## Restrições

- projeto individual;
- aproximadamente 8 horas semanais;
- ausência de acesso ao backend e ao banco real;
- dependência de serviços externos;
- experiência prática inicial;
- possíveis mudanças nos sistemas;
- execução limitada a poucos navegadores e viewports.

## Critérios de entrada

- URL do alvo acessível;
- navegador ou Postman disponível;
- documentação e casos revisados;
- dados de teste definidos;
- ambiente registrado;
- pasta de evidências preparada;
- ausência de incidente externo conhecido que invalide a sessão.

## Critérios de saída da primeira versão

- 8 casos prioritários executados ao menos uma vez;
- 5 padrões de endpoint exercitados;
- resultados e evidências registrados;
- falhas de teste investigadas;
- bugs reais, se houver, separados de limitações e dúvidas;
- matriz atualizada;
- relatório de resumo preenchido;
- README com números reais.

## Suspensão

Suspender a sessão quando:

- o serviço estiver indisponível;
- o comportamento mudar de forma que invalide os casos;
- a internet impedir resultados confiáveis;
- houver risco de realizar ação não autorizada;
- dados ou credenciais de teste deixarem de funcionar;
- mais de 50% dos casos ficarem bloqueados pelo mesmo impedimento.

## Retomada

Retomar quando:

- a disponibilidade for restabelecida;
- os casos forem revisados;
- a nova versão ou comportamento for registrado;
- a causa do bloqueio for conhecida;
- o ambiente estiver novamente estável.
