-- IMPORTANTE: este arquivo contém apenas consultas de leitura.
-- O banco é fictício e não representa o SauceDemo ou o DummyJSON.

-- Q01: listar usuários ativos.
SELECT user_id, name, email
FROM users
WHERE status = 'ACTIVE'
ORDER BY name;

-- Q02: ordenar produtos ativos do maior para o menor preço.
SELECT product_id, name, price, stock
FROM products
WHERE active = 1
ORDER BY price DESC;

-- Q03: contar produtos por categoria.
SELECT category, COUNT(*) AS product_count
FROM products
GROUP BY category
ORDER BY product_count DESC, category;

-- Q04: resumir pedidos por status.
SELECT status, COUNT(*) AS order_count, SUM(stored_total) AS stored_total_sum
FROM orders
GROUP BY status
ORDER BY status;

-- Q05: detalhar pedidos com usuário e itens.
SELECT
    o.order_id,
    u.name AS user_name,
    o.status,
    p.name AS product_name,
    oi.quantity,
    oi.unit_price,
    ROUND(oi.quantity * oi.unit_price, 2) AS item_total
FROM orders o
JOIN users u ON u.user_id = o.user_id
JOIN order_items oi ON oi.order_id = o.order_id
JOIN products p ON p.product_id = oi.product_id
ORDER BY o.order_id, p.name;

-- Q06: encontrar divergência entre total armazenado e soma dos itens.
SELECT
    o.order_id,
    o.stored_total,
    ROUND(SUM(oi.quantity * oi.unit_price), 2) AS calculated_total,
    ROUND(o.stored_total - SUM(oi.quantity * oi.unit_price), 2) AS difference
FROM orders o
JOIN order_items oi ON oi.order_id = o.order_id
GROUP BY o.order_id, o.stored_total
HAVING ABS(o.stored_total - SUM(oi.quantity * oi.unit_price)) > 0.01;

-- Q07: encontrar e-mails logicamente duplicados, ignorando maiúsculas.
SELECT LOWER(email) AS normalized_email, COUNT(*) AS occurrences
FROM users
GROUP BY LOWER(email)
HAVING COUNT(*) > 1;

-- Q08: encontrar item cuja quantidade pedida excede o estoque atual.
SELECT
    o.order_id,
    p.product_id,
    p.name,
    oi.quantity AS ordered_quantity,
    p.stock
FROM order_items oi
JOIN orders o ON o.order_id = oi.order_id
JOIN products p ON p.product_id = oi.product_id
WHERE oi.quantity > p.stock;

-- Q09: usuários sem pedidos.
SELECT u.user_id, u.name, u.email
FROM users u
LEFT JOIN orders o ON o.user_id = u.user_id
WHERE o.order_id IS NULL
ORDER BY u.name;

-- Q10: produtos que nunca apareceram em pedidos.
SELECT p.product_id, p.name, p.active
FROM products p
LEFT JOIN order_items oi ON oi.product_id = p.product_id
WHERE oi.order_item_id IS NULL
ORDER BY p.product_id;

-- Q11: receita armazenada de pedidos pagos.
SELECT ROUND(SUM(stored_total), 2) AS paid_stored_revenue
FROM orders
WHERE status = 'PAID';

-- Q12: média de preço por categoria.
SELECT category, ROUND(AVG(price), 2) AS average_price
FROM products
GROUP BY category
ORDER BY category;

-- Q13: validar pedidos de usuários inativos.
SELECT o.order_id, u.name, u.status, o.status
FROM orders o
JOIN users u ON u.user_id = o.user_id
WHERE u.status = 'INACTIVE';

-- Q14: verificar dados que violariam regras básicas de domínio.
SELECT product_id, name, price, stock
FROM products
WHERE price < 0 OR stock < 0;
