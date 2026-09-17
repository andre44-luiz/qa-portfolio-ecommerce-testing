# Documentação dos testes de API

## Contexto

A API DummyJSON é complementar ao SauceDemo. Ela não é o backend da aplicação web.

## Variáveis

| Variável | Valor inicial | Uso |
|---|---|---|
| `base_url` | `https://dummyjson.com` | Base das requisições |
| `product_id` | `1` | Produto válido |
| `cart_id` | `1` | Carrinho válido |
| `search_term` | `phone` | Pesquisa |
| `username` | `emilys` | Usuário fictício documentado |
| `password` | `emilyspass` | Senha fictícia documentada |
| `access_token` | vazio | Preenchido pelo script de login |

## Endpoints selecionados

### API-EP-001 — Listar produtos

- **Método:** GET
- **URL:** `{{base_url}}/products?limit=1&skip=0`
- **Finalidade:** validar listagem e paginação.
- **Parâmetros:** `limit` e `skip`.
- **Headers:** `Accept: application/json`.
- **Body:** não aplicável.
- **Status positivo esperado:** `200`.
- **Teste positivo:** `limit=1`, `skip=0`.
- **Testes negativos/exploratórios:** valores não numéricos, negativos e acima do conjunto; registrar o comportamento antes de concluir se há defeito.
- **Assertions:** status; tempo; `products` array; `total`, `skip`, `limit` numéricos; tamanho máximo; tipos de campos.

### API-EP-002 — Consultar produto

- **Método:** GET
- **URL:** `{{base_url}}/products/{{product_id}}`
- **Finalidade:** obter um produto específico.
- **Parâmetros:** ID no path.
- **Headers:** `Accept: application/json`.
- **Body:** não aplicável.
- **Status positivo esperado:** `200`.
- **Teste positivo:** ID `1`.
- **Teste negativo:** ID `abc` ou ID inexistente.
- **Status negativo esperado:** resposta `4xx`; o código exato deve ser registrado na primeira execução porque não será inventado a partir de suposição.
- **Assertions:** ID corresponde à variável; `title` string; `price` number; campos principais presentes.

### API-EP-003 — Pesquisar produtos

- **Método:** GET
- **URL:** `{{base_url}}/products/search?q={{search_term}}`
- **Finalidade:** pesquisar produtos.
- **Parâmetros:** `q`.
- **Headers:** `Accept: application/json`.
- **Body:** não aplicável.
- **Status positivo esperado:** `200`.
- **Testes positivos:** termo `phone`; termo de um produto observado.
- **Testes negativos/exploratórios:** termo sem resultado, vazio e caracteres especiais.
- **Assertions:** `products` array; metadados numéricos; estrutura dos itens.

### API-EP-004 — Autenticar

- **Método:** POST
- **URL:** `{{base_url}}/auth/login`
- **Finalidade:** obter tokens de usuário fictício.
- **Headers:** `Content-Type: application/json`.
- **Body:**
```json
{
  "username": "{{username}}",
  "password": "{{password}}",
  "expiresInMins": 30
}
```
- **Status positivo esperado:** `200`.
- **Teste positivo:** credenciais fictícias documentadas.
- **Testes negativos:** senha incorreta, campo ausente e tipo inválido.
- **Status negativo esperado:** resposta `4xx`, normalmente validável como `400` ou `401`; registrar o código observado.
- **Assertions:** tokens presentes no sucesso; usuário corresponde; nenhum token em falha.

### API-EP-005 — Consultar carrinho

- **Método:** GET
- **URL:** `{{base_url}}/carts/{{cart_id}}`
- **Finalidade:** validar estrutura de carrinho.
- **Parâmetros:** ID no path.
- **Headers:** `Accept: application/json`.
- **Body:** não aplicável.
- **Status positivo esperado:** `200`.
- **Teste positivo:** ID `1`.
- **Teste negativo:** ID inexistente ou formato inválido.
- **Status negativo esperado:** resposta `4xx`; registrar o código exato observado.
- **Assertions:** `id`; `products` array; quantidades e totais numéricos; ID corresponde à variável.

## Scripts básicos do Postman

### Código de status

```javascript
pm.test("Status 200", function () {
    pm.response.to.have.status(200);
});
```

### Tempo de resposta

```javascript
pm.test("Tempo abaixo do limite educacional", function () {
    pm.expect(pm.response.responseTime).to.be.below(5000);
});
```

O limite não representa requisito oficial de desempenho. Ele serve apenas para praticar assertions.

### Presença de campos

```javascript
const body = pm.response.json();

pm.test("Campos principais presentes", function () {
    pm.expect(body).to.have.property("id");
    pm.expect(body).to.have.property("title");
});
```

### Tipos

```javascript
const body = pm.response.json();

pm.test("Tipos coerentes", function () {
    pm.expect(body.id).to.be.a("number");
    pm.expect(body.title).to.be.a("string");
    pm.expect(body.price).to.be.a("number");
});
```

### Valor específico

```javascript
const body = pm.response.json();

pm.test("ID corresponde ao solicitado", function () {
    pm.expect(body.id).to.eql(Number(pm.environment.get("product_id")));
});
```

### Estrutura básica de JSON

```javascript
const body = pm.response.json();

pm.test("Lista de produtos possui estrutura básica", function () {
    pm.expect(body.products).to.be.an("array");
    pm.expect(body.total).to.be.a("number");
    pm.expect(body.skip).to.be.a("number");
    pm.expect(body.limit).to.be.a("number");
});
```

## Execução

1. Importar a collection.
2. Importar o environment.
3. selecionar o environment.
4. confirmar que `access_token` está vazio.
5. executar primeiro os requests positivos.
6. executar os negativos.
7. exportar ou capturar o resumo.
8. não salvar token real no Git.

## Fontes oficiais

- https://dummyjson.com/docs/products
- https://dummyjson.com/docs/auth
- https://dummyjson.com/docs/carts
- https://learning.postman.com/docs/tests-and-scripts/write-scripts/test-scripts/
