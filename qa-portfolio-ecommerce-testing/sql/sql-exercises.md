# SQL para QA — banco fictício

## Aviso

Este banco é uma massa de treinamento independente. Ele não possui dados extraídos do SauceDemo ou do DummyJSON.

## Domínio

- `users`: clientes fictícios;
- `products`: produtos fictícios com preços em R$;
- `orders`: pedidos;
- `order_items`: itens e quantidades.

## Como abrir

### DB Browser for SQLite ou DBeaver

Abrir `qa_training.db`.

### Terminal

```bash
sqlite3 qa_training.db
```

No terminal SQLite:

```sql
.headers on
.mode column
.read validation-queries.sql
```

## Como recriar o banco

```bash
sqlite3 qa_training.db < schema.sql
sqlite3 qa_training.db < seed.sql
```

## Inconsistências intencionais

A massa contém anomalias planejadas para treinamento:

1. dois e-mails equivalentes quando comparados sem diferenciar maiúsculas;
2. um pedido cujo `stored_total` diverge da soma dos itens;
3. um item cuja quantidade excede o estoque atual;
4. um pedido associado a usuário inativo, que deve ser analisado como possível regra de negócio;
5. um produto que nunca foi pedido.

Esses dados são exercícios, não bugs de sistemas externos.

## Exercícios

1. Liste todos os usuários ativos.
2. Filtre produtos com preço acima de R$ 100,00.
3. Ordene os produtos por estoque crescente.
4. Conte produtos por categoria.
5. Conte pedidos por status.
6. Relacione pedidos, clientes e produtos com JOIN.
7. Calcule o total de cada item.
8. Compare o total calculado ao armazenado.
9. Encontre duplicidades de e-mail ignorando maiúsculas.
10. Encontre quantidades maiores que o estoque.
11. Liste usuários sem pedidos.
12. Liste produtos nunca pedidos.
13. Calcule a soma dos pedidos pagos.
14. Calcule a média de preço por categoria.
15. Investigue se pedido de usuário inativo é permitido pela regra de negócio.

## Critérios de aprendizagem

Você deve conseguir:

- prever quais colunas retornarão;
- explicar a diferença entre `WHERE` e `HAVING`;
- explicar por que o tipo de JOIN foi escolhido;
- reconhecer que uma consulta encontra uma suspeita, não prova automaticamente um bug;
- executar somente SELECT no ambiente de validação.
